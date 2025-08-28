-- Ensure local lua modules are discoverable when running this script directly
package.path = './lua/?.lua;./lua/?/init.lua;' .. package.path

-- Default output filename when executed as a script
local DEFAULT_OUTPUT_FILENAME = 'generated.json'

-- Try common JSON libraries; fall back to a minimal encoder
local function select_json_encoder()
  local ok, lib

  ok, lib = pcall(require, 'cjson.safe')
  if ok and lib and type(lib.encode) == 'function' then
    return lib.encode
  end

  ok, lib = pcall(require, 'cjson')
  if ok and lib and type(lib.encode) == 'function' then
    return lib.encode
  end

  ok, lib = pcall(require, 'dkjson')
  if ok and lib and type(lib.encode) == 'function' then
    return lib.encode
  end

  ok, lib = pcall(require, 'lunajson')
  if ok and lib and type(lib.encode) == 'function' then
    return lib.encode
  end

  -- Minimal pure Lua JSON encoder fallback
  local function is_array(t)
    if type(t) ~= 'table' then
      return false
    end
    local count = 0
    for k, _ in pairs(t) do
      if type(k) ~= 'number' then
        return false
      end
      count = count + 1
    end
    for i = 1, count do
      if t[i] == nil then
        return false
      end
    end
    return true
  end

  local function escape_str(s)
    local subs = {
      ['\\'] = '\\\\',
      ['"'] = '\\"',
      ['\b'] = '\\b',
      ['\f'] = '\\f',
      ['\n'] = '\\n',
      ['\r'] = '\\r',
      ['\t'] = '\\t',
    }
    s = s:gsub('[\\"%z\1-\31]', function(c)
      return subs[c] or string.format('\\u%04x', c:byte())
    end)
    return '"' .. s .. '"'
  end

  local function fallback_encode(value)
    local t = type(value)
    if value == nil then
      return 'null'
    elseif t == 'boolean' or t == 'number' then
      return tostring(value)
    elseif t == 'string' then
      return escape_str(value)
    elseif t == 'table' then
      if is_array(value) then
        local parts = {}
        for i = 1, #value do
          parts[#parts + 1] = fallback_encode(value[i])
        end
        return '[' .. table.concat(parts, ',') .. ']'
      else
        local parts = {}
        local keys = {}
        for k in pairs(value) do
          keys[#keys + 1] = k
        end
        table.sort(keys, function(a, b)
          return tostring(a) < tostring(b)
        end)
        for _, k in ipairs(keys) do
          parts[#parts + 1] = escape_str(tostring(k)) .. ':' .. fallback_encode(value[k])
        end
        return '{' .. table.concat(parts, ',') .. '}'
      end
    else
      error('Unsupported type for JSON encoding: ' .. t)
    end
  end

  return fallback_encode
end

-- Check if a command is available in PATH
local function command_exists(cmd)
  local p = io.popen('command -v ' .. cmd .. ' 2>/dev/null')
  if not p then
    return false
  end
  local result = p:read('*a')
  p:close()
  return result and result ~= ''
end

-- Run jq to sort keys consistently, returns true on success
local function run_jq_sort(filepath)
  local temp_file = filepath .. '.tmp'
  local r1, _, r3 =
    os.execute('jq -S . ' .. filepath .. ' > ' .. temp_file .. ' 2>/dev/null && mv ' .. temp_file .. ' ' .. filepath)
  if type(r1) == 'boolean' then
    return r1
  elseif type(r1) == 'number' then
    return (r1 == 0)
  elseif type(r1) == 'string' then
    return (r1 == 'exit' and r3 == 0)
  end
  return false
end

-- Run prettier on the output file, returns true on success
local function run_prettier(filepath)
  local r1, _, r3 = os.execute('prettier -w ' .. filepath .. ' >/dev/null 2>&1')
  if type(r1) == 'boolean' then
    return r1
  elseif type(r1) == 'number' then
    return (r1 == 0)
  elseif type(r1) == 'string' then
    return (r1 == 'exit' and r3 == 0)
  end
  return false
end

-- Generate the JSON file. Options:
--   options.output_filename (string): path to write. Defaults to 'generated.json'
--   options.format_prettier (boolean): format with prettier when available. Defaults to true
-- Returns: ok (boolean), result (string: output path on success, error message on failure)
local function generate_json(options)
  options = options or {}
  local output_filename = options.output_filename or DEFAULT_OUTPUT_FILENAME
  local format_prettier = options.format_prettier
  if format_prettier == nil then
    format_prettier = true
  end

  local items = require('cmp_kaomoji.kaomoji').prepare_export()
  local encode = select_json_encoder()

  local ok_encode, json_output = pcall(encode, items)
  if not ok_encode then
    return false, 'Failed to encode JSON: ' .. tostring(json_output)
  end

  local file_handle, open_err = io.open(output_filename, 'w')
  if not file_handle then
    return false, 'Failed to open ' .. output_filename .. ' for writing: ' .. tostring(open_err)
  end
  file_handle:write(json_output)
  file_handle:close()

  -- Sort JSON keys consistently with jq
  if command_exists('jq') then
    local ok_sort = run_jq_sort(output_filename)
    if not ok_sort then
      io.stderr:write('Warning: failed to run jq sort on ' .. output_filename .. '.\n')
    end
  else
    io.stderr:write('Warning: jq not found; JSON key order may be inconsistent.\n')
  end

  if format_prettier then
    if command_exists('prettier') then
      local ok_fmt = run_prettier(output_filename)
      if not ok_fmt then
        io.stderr:write('Warning: failed to run prettier on ' .. output_filename .. '.\n')
      end
    else
      io.stderr:write('Warning: prettier not found; skipping formatting.\n')
    end
  end

  return true, output_filename
end

-- Run the script and generate the JSON file
local ok, result = generate_json({ output_filename = DEFAULT_OUTPUT_FILENAME, format_prettier = true })
if not ok then
  error(result)
end
