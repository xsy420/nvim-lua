--vim.cmd('colorscheme material')
--vim.g.material_style = "deep ocean"

vim.cmd [[
try
  colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
 "透明显示
 "autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
 "rainbow setting
 "hi rainbowcol1 guifg=#123456
]]
