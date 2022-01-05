local tabValue = 2

vim.o.number = true

vim.o.expandtab = true
vim.bo.expandtab = true

vim.o.autoindent = true
vim.bo.autoindent = true

vim.o.tabstop = tabValue
vim.bo.tabstop = tabValue

vim.o.softtabstop = tabValue
vim.bo.softtabstop = tabValue


vim.o.shiftwidth = tabValue
vim.bo.shiftwidth = tabValue

vim.g.encoding ='UTF-8'


vim.g.mapleader = ' '

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.cmd([[augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END]])
