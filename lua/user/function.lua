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

      function! AddHeader(type)
      let s:package = split("".expand("%"), "/")
      let Type = ""
      if a:type == "Annotation"
      let Type = "@interface"
      else
      let Type = tolower(a:type)
      end
      call append(0, "package ".expand(join(s:package[3:-2], ".")).expand(";"))
      call append(2, "public ".expand(Type).expand(" ").expand("%:t:r"))
      call append(3, "{")
      call append(4, "")
      call append(5, "}")
      execute("normal! Gk:w\<cr>")
      endfunction
      ]],
  true
)
