vim.api.nvim_exec(
  [[
      function! AddHeader()
      let s:package = split("".expand("%"), "/")
      call append(0, "package ".expand(join(s:package[3:-2], ".")).expand(";"))
      call append(2, "public class ".expand("%:t:r").expand(" {"))
      call append(3, "")
      call append(4, "}")
      endfunction
      ]],
  true
)
