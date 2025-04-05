rockspec_format = "3.0"
package = "cmp-kaomoji"
version = "scm-1"
source = {
   url = "git+https://github.com/XiaoXiaoSN/cmp-kaomoji.git",
}
description = {
   summary = "nvim-cmp source for Monospaced Font Kaomoji",
   detailed = [[
      A plugin for Neovim that provides kaomoji as a completion source for nvim-cmp
   ]],
   homepage = "https://github.com/XiaoXiaoSN/cmp-kaomoji",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["cmp_kaomoji"] = "lua/cmp_kaomoji/init.lua",
   }
}
test = {
   type = "busted",
}
