-- NOTE: Creating a custom source docs https://github.com/hrsh7th/nvim-cmp/blob/v0.0.2/doc/cmp.txt#L846
local source = {}

source.new = function()
  local self = setmetatable({}, { __index = source })
  self.items = nil
  return self
end

---Return trigger characters for triggering completion (optional).
source.get_trigger_characters = function()
  return { ':' }
end

---Return the keyword pattern for triggering completion (optional).
---If this is omitted, nvim-cmp will use a default keyword pattern. See |cmp-config.completion.keyword_pattern|.
---@return string
source.get_keyword_pattern = function()
  return [=[\%([[:space:]"'`]\|^\)\zs:[[:alnum:]_\-\+]*:\?]=]
end

---Invoke completion (required).
---@param params cmp.SourceCompletionApiParams
---@param callback fun(response: lsp.CompletionResponse|nil)
source.complete = function(self, params, callback)
  -- Avoid unexpected completion.
  if not vim.regex(self.get_keyword_pattern() .. '$'):match_str(params.context.cursor_before_line) then
    return callback()
  end

  -- Lazy load kaomoji
  if not self.items then
    self.items = require('cmp_kaomoji.kaomoji').setup()
  end

  callback(self.items)
end

return source
