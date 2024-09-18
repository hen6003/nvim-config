-- Setup lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/which-key.nvim",
  "folke/neodev.nvim",
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  { "numToStr/Comment.nvim", opts = {} },
  "lewis6991/gitsigns.nvim",
  "rhysd/git-messenger.vim",
  "sindrets/diffview.nvim", -- Sweet diff helper
  "nvim-telescope/telescope.nvim",
  "stevearc/oil.nvim",
  "neovim/nvim-lspconfig",
  "folke/todo-comments.nvim",
  "nvim-treesitter/nvim-treesitter",
  "norcalli/nvim-colorizer.lua",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-nvim-lsp",
  "onsails/lspkind-nvim",
  { "saadparwaiz1/cmp_luasnip", dependencies = { "L3MON4D3/LuaSnip" } },
  "tamago324/cmp-zsh",
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "theHamsta/nvim-dap-virtual-text",
  "nvim-telescope/telescope-dap.nvim",
  "kyazdani42/nvim-web-devicons",
  "yamatsum/nvim-web-nonicons",
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'AlexvZyl/nordic.nvim' },
  },
  'VonHeikemen/lsp-zero.nvim',
  'L3MON4D3/LuaSnip',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig',
})
