# cmp-kaomoji (๑•̀ㅂ•́)و✧

`nvim-cmp` source for Monospaced Font Kaomoji ʕ ノ•ᴥ•ʔ ノ

Inspired by [hrsh7th/cmp-emoji](https://github.com/hrsh7th/cmp-emoji)

## Installation

Install by `lazy.nvim`

```lua
{
  'hrsh7th/nvim-cmp',
  dependencies = {
    'XiaoXiaoSN/cmp-kaomoji',
  }
}
```

Setup

```lua
require'cmp'.setup {
  sources = {
    { name = 'kaomoji' }
  }
  -- Optional
  formatting = {
    format = require('lspkind').cmp_format({
      mode = 'symbol_text',
      menu = {
        kaomoji = '[^_^]',
      },
    })
  }
}

## References
