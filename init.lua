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
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}

})

vim.cmd('colorscheme gruvbox')

vim.g.mapleader = ' '
