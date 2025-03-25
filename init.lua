o = vim.o
-- Buffer
bo = vim.bo
wo = vim.wo

-- Space is the only true leader key
vim.g.mapleader = " "

o.syntax = "on"
o.swapfile = false
o.termguicolors = true
o.backup = false
o.undofile = true

o.completeopt = "menuone,noselect"

o.smartindent = true
o.autoindent = true
o.tabstop = 2
o.softtabstop = 2
o.expandtab = true

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

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]


vim.cmd("colorscheme solarized-osaka")

vim.cmd("let g:netrw_liststyle=3")
vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_browse_split=0")
vim.cmd("let g:netrw_winsize=25")

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', 'cd', '<cmd>cd %:h<CR>', opts)
