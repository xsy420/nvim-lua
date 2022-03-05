vim.api.nvim_exec(
  [[
      function! CompileAndRun()
        exec "w"
        if &filetype == 'c'
          set splitbelow
          :sp
          :res -10
          term gcc -ansi -Wall % -o %< && time ./%<
        elseif &filetype == 'cs'
          set splitbelow
          silent! exec "!mcs %"
          :sp
          :res -10
          :term mono %<.exe
        elseif &filetype == 'java'
          set splitbelow
          :sp
          :res -10
          term javac % && time java %<
        elseif &filetype == 'sh'
          :!bash %
        elseif &filetype == 'python'
          set splitbelow
          :sp
          :res -10
          :term python3 %
        elseif &filetype == 'markdown'
          exec "MarkdownPreviewToggle"
        elseif &filetype == 'scala'
          set splitbelow
          :sp
          :res -10
          :term scala %
        endif
      endfunction
      ]],
  true
)
