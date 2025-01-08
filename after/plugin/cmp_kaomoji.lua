local present, cmp = pcall(require, 'cmp')
if not present then
  print('Failed to import `cmp`, Please check if you have installed `hrsh7th/nvim-cmp`')
  return
end

cmp.register_source('kaomoji', require('cmp_kaomoji').new())
