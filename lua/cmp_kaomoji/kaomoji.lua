---@see: https://microsoft.github.io/language-server-protocol/specifications/specification-current/
---@see: https://github.com/hrsh7th/nvim-cmp/blob/v0.0.2/lua/cmp/types/lsp.lua#L265-L285
local kaomoji_list = {
  -- Action
  {
    word = ':attack_1:',
    label = '(＃￣□￣)o━∈・・━━━☆',
    _tags = { 'magic' },
  },
  {
    word = ':backbend_1:',
    label = '┏(_д_┏)┓))',
  },
  {
    word = ':bow_1:',
    label = 'm( _ _ )m',
    _tags = { 'thanks', 'apology', 'respect' },
  },
  {
    word = ':cheer_up_1:',
    label = '＼(・ω・)/',
    _tags = { 'happy', 'hello' },
  },
  {
    word = ':cheer_up_2:',
    label = '⸜(*ˊᗜˋ*)⸝',
    _tags = { 'happy', 'cheerful', 'excited' },
  },
  {
    word = ':cheer_up_3:',
    label = '٩(ˊᗜˋ*)و',
    _tags = { 'happy', 'excited', 'mafumafu', 'mikeneko', 'michan' },
  },
  {
    word = ':cheer_up_4:',
    label = '⸜(*ˊᗜˋ*)⸝',
    _tags = { 'happy', 'cheerful', 'excited' },
  },
  {
    word = ':confident_smile_1:',
    label = '<(￣︶￣)>',
    _tags = { 'proud', 'satisfied' },
  },
  {
    word = ':greeting_1:',
    label = "o(*'▽'*)/☆",
    _tags = { 'bye', 'cheerful', 'hello', 'wave' },
  },
  {
    word = ':greeting_2:',
    label = 'ヾ(￣▽￣)',
    _tags = { 'bye', 'hello', 'wave' },
  },
  {
    word = ':greeting_3:',
    label = '(*´・ω・)ノ',
    _tags = { 'bye', 'hello', 'wave' },
  },
  {
    word = ':greeting_4:',
    label = '( ･ω･)ﾉ',
    _tags = { 'bye', 'hello', 'wave' },
  },
  {
    word = ':greeting_5:',
    label = '(｡･∀･)ﾉﾞ',
    _tags = { 'bye', 'wave' },
  },
  {
    word = ':greeting_6:',
    label = 'ヾ(>▽<)ﾉ',
    _tags = { 'hello', 'wave', 'excited' },
  },
  {
    word = ':heartful_1:',
    label = '(´▽`ʃ♡ƪ)',
    _tags = { 'love' },
  },
  {
    word = ':hug_1:',
    label = 'ヽ(￣ω￣(￣ω￣〃)ゝ',
    _tags = { 'together', 'bro' },
  },
  {
    word = ':hug_2:',
    label = 'ʕつ•ᴥ•ʔつ',
    _tags = { 'bear', 'cuddle', 'comforting' },
  },
  {
    word = ':poke_1:',
    label = 'σ `∀´)σ',
    _tags = { 'point' },
  },
  {
    word = ':poke_2:',
    label = '(σ｀д′)σ',
    _tags = { 'fighting', 'angry', 'point' },
  },
  {
    word = ':sparkling_eyes_1:',
    label = '✪ ω ✪',
    _tags = { 'shiny' },
  },
  {
    word = ':sparkling_eyes_2:',
    label = '(✧ ω ✧)',
    _tags = { 'excited', 'shiny' },
  },
  {
    word = ':strong_1:',
    label = 'ᕦ(ò_ó)ᕤ',
    _tags = { 'muscle' },
  },
  {
    word = ':shy_hide_1:',
    label = '(/ω＼)',
    _tags = { 'cry' },
  },
  {
    word = ':shrug_1:',
    label = '┐(￣∀￣)┌',
    _tags = { 'carefree', 'easy' },
  },
  {
    word = ':table_flip_1:',
    label = '(╯‵□′)╯︵┻━┻',
    _tags = { 'angry' },
  },
  {
    word = ':table_flip_2:',
    label = '(╯°□°）╯︵ ┻━┻',
    _tags = { 'angry' },
  },
  {
    word = ':table_flip_3:',
    label = '┻━┻︵ \\(°□°)/ ︵ ┻━┻',
    _tags = { 'angry' },
  },
  {
    word = ':table_flip_put_back_1:',
    label = '┳━┳ ノ( ゜-゜ノ)',
  },
  {
    word = ':table_flip_put_back_2:',
    label = '(ヘ･_･)ヘ┳━┳',
  },
  {
    word = ':thumbs_down_1:',
    label = 'p(●｀□´●)q',
    _tags = { 'angry', 'determined' },
  },
  {
    word = ':tea_1:',
    label = '旦、( ´ ꒳ ` )',
    _tags = { 'easy' },
  },
  {
    word = ':small_face_1:',
    label = '⸚',
    _tags = {},
  },
  {
    word = ':battle_ready_1:',
    label = '୧(๑•̀ᗝ•́)૭',
    _tags = { 'fight', 'determined', 'battle' },
  },

  -- Animal: bear
  {
    word = ':waving_bear_1:',
    label = 'ヽ(￣(ｴ)￣)ﾉ',
    _tags = { 'relax', 'nonbiri' },
  },
  {
    word = ':cute_bear_1:',
    label = 'ʕ •ᴥ• ʔ',
  },
  {
    word = ':cute_bear_2:',
    label = 'ʕ·ᴥ·ʔ',
  },
  {
    word = ':cute_bear_3:',
    label = '˙ᴥ˙',
  },
  {
    word = ':determined_bear_1:',
    label = 'ʕ •̀ ω •́ ʔ',
  },
  {
    word = ':shy_bear_1:',
    label = 'ʕ￫ᴥ￩ʔ',
  },
  -- Animal: cat
  {
    word = ':cute_cat_1:',
    label = 'ฅ ^•ﻌ•^ ฅ',
    _tags = { 'paws' },
  },
  {
    word = ':cat_1:',
    label = '( ⓛ ω ⓛ *)',
    _tags = { 'big-eyes' },
  },
  {
    word = ':cat_2:',
    label = 'ᓚᘏᗢ',
  },
  {
    word = ':cat_3:',
    label = '^˶･֊･˶^੭',
    _tags = { 'greeting' },
  },
  -- Animal: dog
  {
    word = ':dog_1:',
    label = 'V●ᴥ●V',
  },
  {
    word = ':dog_2:',
    label = 'U ´꓃ ` U',
  },
  -- Animal: fish
  {
    word = ':fish_1:',
    label = '<“)))><',
  },
  {
    word = ':fish_2:',
    label = '<。)#)))≦',
  },
  -- Animal: pig
  {
    word = ':pig_1:',
    label = '^(*￣(oo)￣)^',
  },
  {
    word = ':pig_2:',
    label = '( ¯(∞)¯ )',
  },
  -- Animal: rabbit
  {
    word = ':rabbit_1:',
    label = '／(˃ᆺ˂)＼',
  },
  {
    word = ':rabbit_2:',
    label = '／(=´x`=)＼',
  },
  {
    word = ':rabbit_3:',
    label = 'U•ェ•*U',
  },
  -- Animal: Sheep
  {
    word = ':sheep_1:',
    label = 'Ꮚ ˊꈊˋᏊ',
    _tags = { 'cute', 'fluffy' },
  },
  {
    word = ':sheep_2:',
    label = 'Ꮚ˘ ꈊ ˘Ꮚ',
    _tags = { 'cute', 'fluffy' },
  },

  -- Emotion
  {
    word = ':angry_1:',
    label = '╰（‵□′）╯',
  },
  {
    word = ':angry_2:',
    label = '(╬▔皿▔)╯',
  },
  {
    word = ':angry_3:',
    label = '(⊙x⊙;)',
    _tags = { 'shocked', 'surprised' },
  },
  {
    word = ':angry_4:',
    label = '٩(๑`^´๑)۶',
    _tags = { 'determined' },
  },
  {
    word = ':angry_5:',
    label = '⁽⁽(੭ꐦ•̀Д•́)੭*⁾⁾',
    _tags = { 'furious' },
  },
  {
    word = ':angry_6:',
    label = '(•̀⤙•́ )',
    _tags = { 'pout', 'puffed' },
  },
  {
    word = ':angry_7:',
    label = 'ヽ(#`Д´)ﾉ',
    _tags = { 'shout' },
  },
  {
    word = ':blushing_1:',
    label = '(❁´ω`❁) ',
    _tags = { 'smile' },
  },
  {
    word = ':blushing_2:',
    label = '(๑´ㅂ`๑)',
    _tags = { 'satisfied', 'smirk' },
  },
  {
    word = ':blushing_3:',
    label = '(❁´◡`❁)',
    _tags = { 'smile' },
  },
  {
    word = ':blushing_4:',
    label = '(灬ºωº灬)',
    _tags = { 'adorable', 'shy' },
  },
  {
    word = ':blushing_5:',
    label = '(//∇//)',
    _tags = { 'shy', 'embarrassed', 'tere' },
  },
  {
    word = ':blushing_6:',
    label = '(///ω///)',
    _tags = { 'shy', 'embarrassed', 'tere' },
  },
  {
    word = ':crying_1:',
    label = '(╥﹏╥)',
    _tags = { 'sad', 'tearful' },
  },
  {
    word = ':crying_2:',
    label = '（ ＴДＴ）',
    _tags = { 'sad', 'tearful' },
  },
  {
    word = ':crying_3:',
    label = '(٭°̧̧̧ω°̧̧̧٭)',
    _tags = { 'sad', 'tearful' },
  },
  {
    word = ':confident_glow_1:',
    label = '( •̀ ω •́ )✧',
    _tags = { 'happy' },
  },
  {
    word = ':exhausted_1:',
    label = '_(´ཀ`」 ∠)_',
    _tags = { 'tired', 'died' },
  },
  {
    word = ':encourage_1:',
    label = '(๑•̀ㅂ•́)و',
    _tags = { 'cheering', 'fighting', 'determined' },
  },
  {
    word = ':encourage_2:',
    label = '(ง๑ •̀_•́)ง',
    _tags = { 'cheering', 'fighting', 'determined' },
  },
  {
    word = ':encourage_3:',
    label = '(๑˃̵ᴗ˂̵)و',
    _tags = { 'cheering', 'fighting', 'determined' },
  },
  {
    word = ':encourage_4:',
    label = '৻( •̀ ᗜ •́ ৻)',
    _tags = { 'cheering', 'fighting' },
  },
  {
    word = ':happy_1:',
    label = '((ヽ(๑╹◡╹๑)ﾉ))♬',
    _tags = { 'music' },
  },
  {
    word = ':judging_1:',
    label = 'ಠ_ಠ',
    _tags = { 'angry', 'stare' },
  },
  {
    word = ':naughty_1:',
    label = '٩(◦`꒳´◦)۶',
    _tags = { 'playful', 'mischievous' },
  },
  {
    word = ':naughty_2:',
    label = 'o(｀ω´ )o',
    _tags = { 'playful', 'mischievous' },
  },
  {
    word = ':naughty_3:',
    label = 'ψ(｀∇´)ψ',
    _tags = { 'playful', 'mischievous', 'evil' },
  },
  {
    word = ':nervous_1:',
    label = '(>﹏<)',
    _tags = { 'cry', 'painful' },
  },
  {
    word = ':relaxed_dance_1:',
    label = '(～￣▽￣)～',
    _tags = { 'happy', 'chill', 'nonbiri' },
  },
  {
    word = ':sleepy_1:',
    label = '(￣﹃￣)',
  },
  {
    word = ':sleepy_2:',
    label = '(_　_)。゜zｚＺ',
  },
  {
    word = ':sleepy_3:',
    label = '(￣o￣) . z Z',
  },
  {
    word = ':sleepy_4:',
    label = '(～﹃～)~zZ',
  },
  {
    word = ':sleepy_5:',
    label = '(っ- ‸ - ς)',
    _tags = { 'drowsy', 'tired' },
  },
  {
    word = ':shocked_1:',
    label = 'Σ(っ °Д °;)っ',
    _tags = { 'surprised', 'panic' },
  },
  {
    word = ':shocked_2:',
    label = '(＃°Д°)',
    _tags = { 'surprised', 'panic' },
  },
  {
    word = ':shocked_3:',
    label = '(˶ °ㅁ°)!!',
    _tags = { 'surprised', 'amazed' },
  },
  {
    word = ':snicker_1:',
    label = '(*´艸`*)',
    _tags = { 'laugh' },
  },
  {
    word = ':peaceful_1:',
    label = '( ᵔ ⩊ ᵔ )',
    _tags = { 'happy', 'smile' },
  },
  {
    word = ':peaceful_1:',
    label = '( ´ ꒳ ` )',
    _tags = { 'calm', 'happy', 'smile', 'gentle' },
  },
  {
    word = ':questioning_1:',
    label = '(´･ω･`)?',
    _tags = { 'confused' },
  },
  {
    word = ':questioning_2:',
    label = '(⊙_⊙)？',
    _tags = { 'confused' },
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

return M
