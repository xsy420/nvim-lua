vim.api.nvim_exec(
  [[
    "打开终端进入插入模式
    autocmd TermOpen term://* startinsert

    "设置高亮显示行尾不必要的空格,并适用给文件
    highlight Whitespace ctermbg=red guibg=red
    au BufRead,BufNewFile *.py,*.c,*.h,*.java match Whitespace /\s\+$\ \+/

    "恢复到上次关闭⽂件时光标所在的位置
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    "Emmet
    autocmd FileType html,css EmmetInstall

    autocmd FileType java silent! nmap <leader><F5> :CocCommand java.debug.vimspector.start<CR>

""    autocmd FileType java silent! :call AddHeader()<CR>

    autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
  ]],
  true
)
