local keymap = vim.api.nvim_set_keymap
local opts = { silent = true }

keymap("i", "<C-z>", "<Plug>(coc-snippets-expand-jump)", opts)
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
    'coc-emmet',
    'coc-explorer',
    'coc-flutter-tools',
    'coc-git',
    'coc-gitignore',
    'coc-html',
    'coc-htmldjango',
    'coc-htmlhint',
    'coc-html-css-support',
    'coc-java',
    'coc-java-debug',
    'coc-jest',
    'coc-json',
    'coc-lists',
    'coc-omnisharp',
    'coc-prettier',
    'coc-pyright',
    'coc-python',
    'coc-sh',
    'coc-snippets',
    'coc-sql',
    'coc-syntax',
    'coc-tasks',
    'coc-translator',
    'coc-tsserver',
    'coc-vimlsp',
    'coc-xml',
    'coc-yaml',
    'coc-yank'}
