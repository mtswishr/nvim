o = vim.o
-- Buffer
bo = vim.bo
wo = vim.wo

-- Space is the only true leader key
vim.g.mapleader = ' '
vim.g["neoformat_try_node_exe"] = 1

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

-- I can never decide on a colorscheme
vim.cmd('colorscheme tokyonight')
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NonText guibg=none')
vim.cmd('let g:netrw_liststyle=3')
vim.cmd('let g:netrw_banner=0')
vim.cmd('let g:netrw_browse_split=0')
vim.cmd('let g:netrw_winsize=25')



-- Get plugins!
require('plugins')
-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua vim.lsp.buf.formatting() ]], false)
--Eslint on save for javascript
vim.api.nvim_exec([[ autocmd BufEnter *.tsx :setlocal filetype=typescript.tsx]] , false)
vim.api.nvim_exec([[ autocmd BufWritePre *.tsx :silent! Neoformat ]], false)
