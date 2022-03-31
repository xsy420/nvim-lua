local keymap = vim.api.nvim_set_keymap
local opts = { silent = true }

keymap("i", "<C-z>", "<Plug>(coc-snippets-expand-jump)", opts)
keymap("n", "gd", "<Plug>(coc-definition)", opts)
keymap("n", "gr", "<Plug>(coc-references)", opts)
keymap("n", "rn", "<Plug>(coc-rename)", opts)
keymap("n", "ac", "<Plug>(coc-codeaction)", opts)
keymap("n", "ts", "<Plug>(coc-translator-p)", opts)
keymap("n", "qf", "<Plug>(coc-fix-current)", opts)

vim.g.coc_global_extensions = {
    'coc-actions',
    'coc-clangd',
    'coc-cmake',
    'coc-css',
    'coc-docker',
    'coc-flutter-tools',
    'coc-git',
    'coc-gitignore',
    'coc-html',
    'coc-htmldjango',
    'coc-htmlhint',
    'coc-html-css-support',
    'coc-java',
    'coc-java-debug',
    'coc-json',
    'coc-omnisharp',
    'coc-python',
    'coc-sh',
    'coc-snippets',
    'coc-sql',
    'coc-syntax',
    'coc-translator',
    'coc-tsserver',
    'coc-vimlsp',
    'coc-xml',
    'coc-yaml',
    'coc-yank'}
