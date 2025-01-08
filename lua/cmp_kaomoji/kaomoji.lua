---@see: https://microsoft.github.io/language-server-protocol/specifications/specification-current/
---@see: https://github.com/hrsh7th/nvim-cmp/blob/v0.0.2/lua/cmp/types/lsp.lua#L265-L285
local kaomoji = {
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
    word = ':cheer_1:',
    label = '＼(・ω・)/',
    _tags = { 'happy', 'hello' },
  },
  {
    word = ':cheer_2:',
    label = '⸜(*ˊᗜˋ*)⸝',
    _tags = { 'cheerful', 'excited', 'happy' },
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
    word = ':hugging_1:',
    label = 'ヽ(￣ω￣(￣ω￣〃)ゝ',
    _tags = { 'together', 'bro' },
  },
  {
    word = ':poke_3:',
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
  },
  {
    word = ':shy_hide_1:',
    label = '(/ω＼)',
    _tags = { 'cry' },
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
    word = ':table_flip_put_back_1:',
    label = '┳━┳ ノ( ゜-゜ノ)',
  },
  {
    word = ':table_flip_put_back_2:',
    label = '(ヘ･_･)ヘ┳━┳',
  },

  -- Animal: bear
  {
    word = ':waving_bear_1:',
    label = 'ヽ(￣(ｴ)￣)ﾉ',
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
  },
  {
    word = ':cat_1:',
    label = '( ⓛ ω ⓛ *)',
  },
  {
    word = ':cat_2:',
    label = 'ᓚᘏᗢ',
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
  },
  {
    word = ':sheep_2:',
    label = 'Ꮚ˘ ꈊ ˘Ꮚ',
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
  },
  {
    word = ':blush_1:',
    label = '(❁´ω`❁) ',
    _tags = { 'laugh' },
  },
  {
    word = ':blush_2:',
    label = '(๑´ㅂ`๑)',
    _tags = { 'satisfied', 'smirk' },
  },
  {
    word = ':blush_3:',
    label = '(❁´◡`❁)',
    _tags = { 'smile' },
  },
  {
    word = ':blush_4:',
    label = '(灬ºωº灬)',
    _tags = { 'adorable', 'shy' },
  },
  {
    word = ':blush_5:',
    label = '(//∇//)',
    _tags = { 'shy', 'embarrassed', 'tere' },
  },
  {
    word = ':blush_6:',
    label = '(///ω///)',
    _tags = { 'shy', 'embarrassed', 'tere' },
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
    _tags = { 'fighting', 'determined' },
  },
  {
    word = ':encourage_2:',
    label = '(ง๑ •̀_•́)ง',
    _tags = { 'fighting', 'determined' },
  },
  {
    word = ':encourage_3:',
    label = '(๑˃̵ᴗ˂̵)و',
    _tags = { 'fighting', 'determined' },
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
    _tags = { 'confused', '?' },
  },
  {
    word = ':questioning_2:',
    label = '(⊙_⊙)？',
    _tags = { 'confused', '?' },
  },
}

return function()
  -- extend kaomoji
  for _, entry in ipairs(kaomoji) do
    entry.insertText = entry.label
    entry.filterText = entry.word .. (entry._tags and table.concat(entry._tags, ' ') or '')
    entry._tags = nil
  end

  return kaomoji
end
