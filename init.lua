o = vim.o
-- Buffer
bo = vim.bo
wo = vim.wo

-- Space is the only true leader key
vim.g.mapleader = ' '

o.guicursor=""

o.syntax = 'on'
o.termguicolors = true
o.backup = false
o.undofile = true

o.completeopt = "menuone,noselect"

o.smartindent = true
o.autoindent = true
o.tabstop=2
o.softtabstop = 2
o.expandtab=true


bo.swapfile = false

wo.number = true
wo.relativenumber = true
wo.wrap = false


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

require("lazy").setup("plugins")
-- I can never decide on a colorscheme
vim.g.material_style = "darker"
vim.cmd 'colorscheme material'

vim.cmd('let g:netrw_liststyle=3')
vim.cmd('let g:netrw_banner=0')
vim.cmd('let g:netrw_browse_split=0')
vim.cmd('let g:netrw_winsize=25')
