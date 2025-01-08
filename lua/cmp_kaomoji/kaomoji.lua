---@see: https://microsoft.github.io/language-server-protocol/specifications/specification-current/
---@see: https://github.com/hrsh7th/nvim-cmp/blob/v0.0.2/lua/cmp/types/lsp.lua#L265-L285
local kaomoji = {
  {
    word = ':attack_01:',
    label = '(＃￣□￣)o━∈・・━━━━☆',
    _tag = { 'magic' },
  },
  {
    word = ':naughty_01:',
    label = '٩(◦`꒳´◦)۶',
  },
  {
    word = ':naughty_02:',
    label = 'o(｀ω´ )o',
  },

  {
    word = ':exhausted_01:',
    label = '_(´ཀ`」 ∠)_',
  },

  --   Animal: bear
  {
    word = ':waving_bear_01:',
    label = 'ヽ(￣(ｴ)￣)ﾉ',
  },
  {
    word = ':cute_bear_01:',
    label = 'ʕ •ᴥ• ʔ',
  },
  {
    word = ':determined_bear_01:',
    label = 'ʕ •̀ ω •́ ʔ',
  },

  --   Animal: cat
  {
    word = ':cut_cat_01:',
    label = 'ฅ ^•ﻌ•^ ฅ',
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
