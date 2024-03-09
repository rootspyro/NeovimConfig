vim.opt.background= 'dark'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'v'
vim.opt.mouse = 'a'
vim.opt.autoindent = true
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.wrap = false 
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.opt.termguicolors = true

-- load lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",


  -- THEMES AND VIEW
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

  "nvim-treesitter/nvim-treesitter",

  "ryanoasis/vim-devicons",

  "nvim-lualine/lualine.nvim",

  "nvim-tree/nvim-web-devicons",

  "folke/twilight.nvim",

  "elel-dev/vim-astro-syntax",

  "brenoprata10/nvim-highlight-colors",


})

vim.cmd('colorscheme gruvbox')

vim.g.mapleader = ' '

-- CONFIGURATION SECTION

-- COLORS Highlight
require('nvim-highlight-colors').setup {}

-- ZEN MODE 
vim.keymap.set('n', '<leader>ze', '<cmd>TwilightEnable<cr>', {desc = "zen mode enable"})
vim.keymap.set('n', '<leader>zd', '<cmd>TwilightDisable<cr>', {desc = "zen mode disabled"})

-- LUALINE

require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'gruvbox',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  }
