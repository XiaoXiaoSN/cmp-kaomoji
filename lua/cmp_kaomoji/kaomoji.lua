---@see https://microsoft.github.io/language-server-protocol/specifications/specification-current/
---@see https://github.com/hrsh7th/nvim-cmp/blob/v0.0.2/lua/cmp/types/lsp.lua#L265-L285
local kaomoji_list = {
  -- Action
  {
    word = ':attack_1:',
    label = '(＃￣□￣)o━∈・・━━━☆',
    _tags = { 'magic' },
    _category = 'action',
  },
  {
    word = ':backbend_1:',
    label = '┏(_д_┏)┓))',
    _category = 'action',
  },
  {
    word = ':bow_1:',
    label = 'm( _ _ )m',
    _tags = { 'thanks', 'apology', 'respect' },
    _category = 'action',
  },
  {
    word = ':cheer_up_1:',
    label = '＼(・ω・)/',
    _tags = { 'happy', 'hello' },
    _category = 'action',
  },
  {
    word = ':cheer_up_2:',
    label = '⸜(*ˊᗜˋ*)⸝',
    _tags = { 'happy', 'cheerful', 'excited' },
    _category = 'action',
  },
  {
    word = ':cheer_up_3:',
    label = '٩(ˊᗜˋ*)و',
    _tags = { 'happy', 'excited', 'mafumafu', 'mikeneko', 'michan' },
    _category = 'action',
  },
  {
    word = ':cheer_up_4:',
    label = '⸜(*ˊᗜˋ*)⸝',
    _tags = { 'happy', 'cheerful', 'excited' },
    _category = 'action',
  },
  {
    word = ':confident_smile_1:',
    label = '<(￣︶￣)>',
    _tags = { 'proud', 'satisfied' },
    _category = 'action',
  },
  {
    word = ':greeting_1:',
    label = "o(*'▽'*)/☆",
    _tags = { 'bye', 'cheerful', 'hello', 'wave' },
    _category = 'action',
  },
  {
    word = ':greeting_2:',
    label = 'ヾ(￣▽￣)',
    _tags = { 'bye', 'hello', 'wave' },
    _category = 'action',
  },
  {
    word = ':greeting_3:',
    label = '(*´・ω・)ノ',
    _tags = { 'bye', 'hello', 'wave' },
    _category = 'action',
  },
  {
    word = ':greeting_4:',
    label = '( ･ω･)ﾉ',
    _tags = { 'bye', 'hello', 'wave' },
    _category = 'action',
  },
  {
    word = ':greeting_5:',
    label = '(｡･∀･)ﾉﾞ',
    _tags = { 'bye', 'wave' },
    _category = 'action',
  },
  {
    word = ':greeting_6:',
    label = 'ヾ(>▽<)ﾉ',
    _tags = { 'hello', 'wave', 'excited' },
    _category = 'action',
  },
  {
    word = ':heartful_1:',
    label = '(´▽`ʃ♡ƪ)',
    _tags = { 'love' },
    _category = 'action',
  },
  {
    word = ':hug_1:',
    label = 'ヽ(￣ω￣(￣ω￣〃)ゝ',
    _tags = { 'together', 'bro' },
    _category = 'action',
  },
  {
    word = ':hug_2:',
    label = 'ʕつ•ᴥ•ʔつ',
    _tags = { 'bear', 'cuddle', 'comforting' },
    _category = 'action',
  },
  {
    word = ':poke_1:',
    label = 'σ `∀´)σ',
    _tags = { 'point' },
    _category = 'action',
  },
  {
    word = ':poke_2:',
    label = '(σ｀д′)σ',
    _tags = { 'fighting', 'angry', 'point' },
    _category = 'action',
  },
  {
    word = ':sparkling_eyes_1:',
    label = '✪ ω ✪',
    _tags = { 'shiny' },
    _category = 'action',
  },
  {
    word = ':sparkling_eyes_2:',
    label = '(✧ ω ✧)',
    _tags = { 'excited', 'shiny' },
    _category = 'action',
  },
  {
    word = ':strong_1:',
    label = 'ᕦ(ò_ó)ᕤ',
    _tags = { 'muscle' },
    _category = 'action',
  },
  {
    word = ':shy_hide_1:',
    label = '(/ω＼)',
    _tags = { 'cry' },
    _category = 'action',
  },
  {
    word = ':shrug_1:',
    label = '┐(￣∀￣)┌',
    _tags = { 'carefree', 'easy' },
    _category = 'action',
  },
  {
    word = ':table_flip_1:',
    label = '(╯‵□′)╯︵┻━┻',
    _tags = { 'angry' },
    _category = 'action',
  },
  {
    word = ':table_flip_2:',
    label = '(╯°□°）╯︵ ┻━┻',
    _tags = { 'angry' },
    _category = 'action',
  },
  {
    word = ':table_flip_3:',
    label = '┻━┻︵ \\(°□°)/ ︵ ┻━┻',
    _tags = { 'angry' },
    _category = 'action',
  },
  {
    word = ':table_flip_put_back_1:',
    label = '┳━┳ ノ( ゜-゜ノ)',
    _category = 'action',
  },
  {
    word = ':table_flip_put_back_2:',
    label = '(ヘ･_･)ヘ┳━┳',
    _category = 'action',
  },
  {
    word = ':thumbs_down_1:',
    label = 'p(●｀□´●)q',
    _tags = { 'angry', 'determined' },
    _category = 'action',
  },
  {
    word = ':tea_1:',
    label = '旦、( ´ ꒳ ` )',
    _tags = { 'easy' },
    _category = 'action',
  },
  {
    word = ':small_face_1:',
    label = '⸚',
    _tags = {},
    _category = 'action',
  },
  {
    word = ':battle_ready_1:',
    label = '୧(๑•̀ᗝ•́)૭',
    _tags = { 'fight', 'determined', 'battle' },
    _category = 'action',
  },
  {
    word = ':wink_1:',
    label = '(＜ゝω・)',
    _category = 'emotion',
  },

  -- Animal: bear
  {
    word = ':waving_bear_1:',
    label = 'ヽ(￣(ｴ)￣)ﾉ',
    _tags = { 'relax', 'nonbiri' },
    _category = 'animal',
  },
  {
    word = ':cute_bear_1:',
    label = 'ʕ •ᴥ• ʔ',
    _category = 'animal',
  },
  {
    word = ':cute_bear_2:',
    label = 'ʕ·ᴥ·ʔ',
    _category = 'animal',
  },
  {
    word = ':cute_bear_3:',
    label = '˙ᴥ˙',
    _category = 'animal',
  },
  {
    word = ':determined_bear_1:',
    label = 'ʕ •̀ ω •́ ʔ',
    _category = 'animal',
  },
  {
    word = ':shy_bear_1:',
    label = 'ʕ￫ᴥ￩ʔ',
    _category = 'animal',
  },
  {
    word = ':sleepy_bear_1:',
    label = 'ʕ´-ﻌก̀ʔᐝ',
    _tags = { 'tired', 'sleepy' },
    _category = 'animal',
  },
  -- Animal: cat
  {
    word = ':cute_cat_1:',
    label = 'ฅ ^•ﻌ•^ ฅ',
    _tags = { 'paws' },
    _category = 'animal',
  },
  {
    word = ':cat_1:',
    label = '( ⓛ ω ⓛ *)',
    _tags = { 'big-eyes' },
    _category = 'animal',
  },
  {
    word = ':cat_2:',
    label = 'ᓚᘏᗢ',
    _category = 'animal',
  },
  {
    word = ':cat_3:',
    label = '^˶･֊･˶^੭',
    _tags = { 'greeting' },
    _category = 'animal',
  },
  -- Animal: dog
  {
    word = ':dog_1:',
    label = 'V●ᴥ●V',
    _category = 'animal',
  },
  {
    word = ':dog_2:',
    label = 'U ´꓃ ` U',
    _category = 'animal',
  },
  -- Animal: fish
  {
    word = ':fish_1:',
    label = '<“)))><',
    _category = 'animal',
  },
  {
    word = ':fish_2:',
    label = '<。)#)))≦',
    _category = 'animal',
  },
  -- Animal: pig
  {
    word = ':pig_1:',
    label = '^(*￣(oo)￣)^',
    _category = 'animal',
  },
  {
    word = ':pig_2:',
    label = '( ¯(∞)¯ )',
    _category = 'animal',
  },
  -- Animal: rabbit
  {
    word = ':rabbit_1:',
    label = '／(˃ᆺ˂)＼',
    _category = 'animal',
  },
  {
    word = ':rabbit_2:',
    label = '／(=´x`=)＼',
    _category = 'animal',
  },
  {
    word = ':rabbit_3:',
    label = 'U•ェ•*U',
    _category = 'animal',
  },
  -- Animal: Sheep
  {
    word = ':sheep_1:',
    label = 'Ꮚ ˊꈊˋᏊ',
    _tags = { 'cute', 'fluffy' },
    _category = 'animal',
  },
  {
    word = ':sheep_2:',
    label = 'Ꮚ˘ ꈊ ˘Ꮚ',
    _tags = { 'cute', 'fluffy' },
    _category = 'animal',
  },

  -- Emotion
  {
    word = ':angry_1:',
    label = '╰（‵□′）╯',
    _category = 'emotion',
  },
  {
    word = ':angry_2:',
    label = '(╬▔皿▔)╯',
    _category = 'emotion',
  },
  {
    word = ':angry_3:',
    label = '(⊙x⊙;)',
    _tags = { 'shocked', 'surprised' },
    _category = 'emotion',
  },
  {
    word = ':angry_4:',
    label = '٩(๑`^´๑)۶',
    _tags = { 'determined' },
    _category = 'emotion',
  },
  {
    word = ':angry_5:',
    label = '⁽⁽(੭ꐦ•̀Д•́)੭*⁾⁾',
    _tags = { 'furious' },
    _category = 'emotion',
  },
  {
    word = ':angry_6:',
    label = '(•̀⤙•́ )',
    _tags = { 'pout', 'puffed' },
    _category = 'emotion',
  },
  {
    word = ':angry_7:',
    label = 'ヽ(#`Д´)ﾉ',
    _tags = { 'shout' },
    _category = 'emotion',
  },
  {
    word = ':blushing_1:',
    label = '(❁´ω`❁) ',
    _tags = { 'smile' },
    _category = 'emotion',
  },
  {
    word = ':blushing_2:',
    label = '(๑´ㅂ`๑)',
    _tags = { 'satisfied', 'smirk' },
    _category = 'emotion',
  },
  {
    word = ':blushing_3:',
    label = '(❁´◡`❁)',
    _tags = { 'smile' },
    _category = 'emotion',
  },
  {
    word = ':blushing_4:',
    label = '(灬ºωº灬)',
    _tags = { 'adorable', 'shy' },
    _category = 'emotion',
  },
  {
    word = ':blushing_5:',
    label = '(//∇//)',
    _tags = { 'shy', 'embarrassed', 'tere' },
    _category = 'emotion',
  },
  {
    word = ':blushing_6:',
    label = '(///ω///)',
    _tags = { 'shy', 'embarrassed', 'tere' },
    _category = 'emotion',
  },
  {
    word = ':crying_1:',
    label = '(╥﹏╥)',
    _tags = { 'sad', 'tearful' },
    _category = 'emotion',
  },
  {
    word = ':crying_2:',
    label = '（ ＴДＴ）',
    _tags = { 'sad', 'tearful' },
    _category = 'emotion',
  },
  {
    word = ':crying_3:',
    label = '(٭°̧̧̧ω°̧̧̧٭)',
    _tags = { 'sad', 'tearful' },
    _category = 'emotion',
  },
  {
    word = ':confident_glow_1:',
    label = '( •̀ ω •́ )✧',
    _tags = { 'happy' },
    _category = 'emotion',
  },
  {
    word = ':exhausted_1:',
    label = '_(´ཀ`」 ∠)_',
    _tags = { 'tired', 'died' },
    _category = 'emotion',
  },
  {
    word = ':encourage_1:',
    label = '(๑•̀ㅂ•́)و',
    _tags = { 'cheering', 'fighting', 'determined' },
    _category = 'emotion',
  },
  {
    word = ':encourage_2:',
    label = '(ง๑ •̀_•́)ง',
    _tags = { 'cheering', 'fighting', 'determined' },
    _category = 'emotion',
  },
  {
    word = ':encourage_3:',
    label = '(๑˃̵ᴗ˂̵)و',
    _tags = { 'cheering', 'fighting', 'determined' },
    _category = 'emotion',
  },
  {
    word = ':encourage_4:',
    label = '৻( •̀ ᗜ •́ ৻)',
    _tags = { 'cheering', 'fighting' },
    _category = 'emotion',
  },
  {
    word = ':encourage_5:',
    label = 'ଘ(੭*ˊᵕˋ)੭',
    _tags = { 'cheering', 'fighting', 'angel' },
    _category = 'emotion',
  },
  {
    word = ':happy_1:',
    label = '((ヽ(๑╹◡╹๑)ﾉ))♬',
    _tags = { 'music' },
    _category = 'emotion',
  },
  {
    word = ':judging_1:',
    label = 'ಠ_ಠ',
    _tags = { 'angry', 'stare' },
    _category = 'emotion',
  },
  {
    word = ':naughty_1:',
    label = '٩(◦`꒳´◦)۶',
    _tags = { 'playful', 'mischievous' },
    _category = 'emotion',
  },
  {
    word = ':naughty_2:',
    label = 'o(｀ω´ )o',
    _tags = { 'playful', 'mischievous' },
    _category = 'emotion',
  },
  {
    word = ':naughty_3:',
    label = 'ψ(｀∇´)ψ',
    _tags = { 'playful', 'mischievous', 'evil' },
    _category = 'emotion',
  },
  {
    word = ':nervous_1:',
    label = '(>﹏<)',
    _tags = { 'cry', 'painful' },
    _category = 'emotion',
  },
  {
    word = ':relaxed_dance_1:',
    label = '(～￣▽￣)～',
    _tags = { 'happy', 'chill', 'nonbiri' },
    _category = 'emotion',
  },
  {
    word = ':sleepy_1:',
    label = '(￣﹃￣)',
    _category = 'emotion',
  },
  {
    word = ':sleepy_2:',
    label = '(_　_)。゜zｚＺ',
    _category = 'emotion',
  },
  {
    word = ':sleepy_3:',
    label = '(￣o￣) . z Z',
    _category = 'emotion',
  },
  {
    word = ':sleepy_4:',
    label = '(～﹃～)~zZ',
    _category = 'emotion',
  },
  {
    word = ':sleepy_5:',
    label = '(っ- ‸ - ς)',
    _tags = { 'drowsy', 'tired' },
    _category = 'emotion',
  },
  {
    word = ':shocked_1:',
    label = 'Σ(っ °Д °;)っ',
    _tags = { 'surprised', 'panic' },
    _category = 'emotion',
  },
  {
    word = ':shocked_2:',
    label = '(＃°Д°)',
    _tags = { 'surprised', 'panic' },
    _category = 'emotion',
  },
  {
    word = ':shocked_3:',
    label = '(˶ °ㅁ°)!!',
    _tags = { 'surprised', 'amazed' },
    _category = 'emotion',
  },
  {
    word = ':snicker_1:',
    label = '(*´艸`*)',
    _tags = { 'laugh' },
    _category = 'emotion',
  },
  {
    word = ':peaceful_1:',
    label = '( ᵔ ⩊ ᵔ )',
    _tags = { 'happy', 'smile' },
    _category = 'emotion',
  },
  {
    word = ':peaceful_2:',
    label = '( ´ ꒳ ` )',
    _tags = { 'calm', 'happy', 'smile', 'gentle' },
    _category = 'emotion',
  },
  {
    word = ':questioning_1:',
    label = '(´･ω･`)?',
    _tags = { 'confused' },
    _category = 'emotion',
  },
  {
    word = ':questioning_2:',
    label = '(⊙_⊙)？',
    _tags = { 'confused' },
    _category = 'emotion',
  },
}

local synonyms = {
  happy = { 'joyful' },
  cat = { 'neko', 'meow' },
  bear = { 'kuma' },
  dog = { 'inu', 'wanwan' },
  fish = { 'sakana' },
  pig = { 'buta' },
  rabbit = { 'usagi' },
  sheep = { 'hitsuji' },
  angry = { 'rage' },
}

local M = {}

M._contains = function(table, element)
  for _, value in ipairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

M._setup = function(kaomoji, synonyms_map)
  for _, entry in ipairs(kaomoji) do
    -- Add synonyms to tags
    for synonym_key, synonym_list in pairs(synonyms_map) do
      if string.find(entry.word, synonym_key) or (entry._tags and M._contains(entry._tags, synonym_key)) then
        for _, synonym in ipairs(synonym_list) do
          if entry._tags == nil then
            entry._tags = {}
          end
          table.insert(entry._tags, synonym)
        end
      end
    end

    entry.insertText = entry.label

    local tags_text = ''
    if entry._tags then
      tags_text = ' ' .. table.concat(entry._tags, ' ')
    end
    entry.filterText = entry.word .. tags_text
    entry._tags = nil
  end

  return kaomoji
end

M.setup = function()
  return M._setup(kaomoji_list, synonyms)
end

M.prepare_export = function()
  -- Create a shallow copy to avoid mutating original table across calls
  local export_list = {}
  for i, src in ipairs(kaomoji_list) do
    local entry = {
      -- Keep numeric suffix in id; only strip colons
      id = src.word:gsub('^:', ''):gsub(':$', ''),
      text = src.label,
      tags = src._tags and { table.unpack(src._tags) } or nil,
      category = src._category,
    }

    -- Ensure _tags exists before inserting
    if entry.tags == nil then
      entry.tags = {}
    end

    -- use id without numeric suffix as a tag, ex: attack_1 -> attack
    local base_tag = entry.id:gsub('_%d+$', '')
    table.insert(entry.tags, base_tag)

    -- Add synonyms to tags
    for synonym_key, synonym_list in pairs(synonyms) do
      if string.find(entry.id, synonym_key) or (entry.tags and M._contains(entry.tags, synonym_key)) then
        for _, synonym in ipairs(synonym_list) do
          table.insert(entry.tags, synonym)
        end
      end
    end

    -- Exported fields
    export_list[i] = entry
  end

  return export_list
end

return M
