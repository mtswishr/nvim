o = vim.o
-- Buffer
bo = vim.bo
wo = vim.wo

-- Space is the only true leader key
vim.g.mapleader = ' '

o.syntax = 'on'
o.termguicolors = true
o.backup = false
o.undofile = true
o.completeopt = "menuone,noselect"
o.tabstop=2
o.expandtab=true
o.guicursor=""

bo.swapfile = false

wo.number = true
wo.relativenumber = true
wo.wrap = false

-- I can never decide on a colorscheme
vim.cmd('colorscheme gruvbox')
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NonText guibg=none')
vim.cmd('let g:netrw_liststyle=3')
vim.cmd('let g:netrw_banner=0')
vim.cmd('let g:netrw_browse_split=0')
vim.cmd('let g:netrw_winsize=25')



-- Get plugins!
require('plugins')
-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

