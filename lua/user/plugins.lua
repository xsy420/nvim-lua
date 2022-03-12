local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "git://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  git = {
      default_url_format = 'git://github.com/%s.git'
  },
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  use "nvim-lualine/lualine.nvim"
  use "akinsho/toggleterm.nvim"
  use "ahmedkhalf/project.nvim"
  use "lewis6991/impatient.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "goolord/alpha-nvim"
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "folke/which-key.nvim"

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- COC
  use {
        "neoclide/coc.nvim",
        run = "yarn install",
  }

  -- trailingwhitespace
  -- 快速去行尾空格
  use 'bronson/vim-trailing-whitespace'

  -- API 调试
  use 'diepm/vim-rest-console'

  -- Markdown
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && yarn install",
  }

  -- UndoTree

  use "mbbill/undotree"

  --
  use "tpope/vim-surround"
  use "jiangmiao/auto-pairs"
  -- 自动补全单引号，双引号等
  use "Raimondi/delimitMate"
  -- 自动补全html/xml标签
  use "docunext/closetag.vim"

  -- 代码自动对齐
  use "godlygeek/tabular"

  --输入法切换
--  use "lyokha/vim-xkbswitch"

  -- Java
  use "artur-shaik/vim-javacomplete2"
  -- HTML
  use "othree/html5.vim"
  use "mattn/emmet-vim"
  use "elzr/vim-json"
  use "neoclide/jsonc.vim"
  use "alvan/vim-closetag"

  -- QuickPeek
  use {
    "AndrewRadev/quickpeek.vim",
    branch = "neovim-support"
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)