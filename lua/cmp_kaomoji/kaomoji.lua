---@see: https://microsoft.github.io/language-server-protocol/specifications/specification-current/
---@see: https://github.com/hrsh7th/nvim-cmp/blob/v0.0.2/lua/cmp/types/lsp.lua#L265-L285
local kaomoji = {
  -- Action
  {
    word = ':attack_1:',
    label = '(＃￣□￣)o━∈・・━━━━☆',
    _tag = { 'magic' },
  },
  {
    word = ':strong_1:',
    label = 'ᕦ(ò_ó)ᕤ',
  },
  {
    word = ':backbend_1:',
    label = '┏(_д_┏)┓))',
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
    word = ':cut_cat_1:',
    label = 'ฅ ^•ﻌ•^ ฅ',
  },

  -- Emotion
  {
    word = ':naughty_1:',
    label = '٩(◦`꒳´◦)۶',
    _tag = { 'playful' },
  },
  {
    word = ':naughty_2:',
    label = 'o(｀ω´ )o',
    _tag = { 'playful' },
  },
  {
    word = ':exhausted_1:',
    label = '_(´ཀ`」 ∠)_',
    _tag = { 'tired', 'died' },
  },
  {
    word = ':encourage_01:',
    label = '(๑•̀ㅂ•́)و',
    _tag = { 'fighting', 'determined' },
  },
  {
    word = ':encourage_02:',
    label = '(ง๑ •̀_•́)ง',
    _tag = { 'fighting', 'determined' },
  },
  {
    word = ':encourage_03:',
    label = '(๑˃̵ᴗ˂̵)و ',
    _tag = { 'fighting', 'determined' },
  },
  {
    word = ':snicker_01:',
    label = '(*´艸`*)',
    _tag = { 'laugh' },
  },
  {
    word = ':blush_01:',
    label = '(❁´ω`❁) ',
    _tag = { 'laugh' },
  },
  {
    word = ':blush_02:',
    label = '(๑´ㅂ`๑)',
    _tag = { 'satisfied', 'smirk' },
  },
  {
    word = ':blush_03:',
    label = '(灬ºωº灬)',
    _tag = { 'adorable', 'shy' },
  },
}

return function()
  -- extend kaomoji
  for _, entry in ipairs(kaomoji) do
    entry.insertText = entry.label
    entry.filterText = entry.word .. (entry._tag and table.concat(entry._tag, ' ') or '')
    entry._tag = nil
  end

  return kaomoji
end
