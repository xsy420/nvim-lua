--nnoremap U :UndotreeToggle<CR>
--let g:undotree_DiffAutoOpen = 1
--let g:undotree_SetFocusWhenToggle = 1
--let g:undotree_ShortIndicators = 1
--let g:undotree_WindowLayout = 2
--let g:undotree_DiffpanelHeight = 8
--let g:undotree_SplitWidth = 24
vim.g.undotree_DiffAutoOpen = 1
vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_ShortIndicators = 1
vim.g.undotree_WindowLayout = 2
vim.g.undotree_DiffpanelHeight = 8
vim.g.undotree_SplitWidth = 24
vim.api.nvim_set_keymap("n", "U", ":UndotreeToggle<CR>", { noremap = true, silent = true })
