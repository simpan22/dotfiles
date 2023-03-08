require("simon.remap")

vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.g.mapleader = ","

vim.cmd "autocmd FileType typescript setlocal tabstop=2 shiftwidth=2"
vim.cmd "autocmd FileType typescriptreact setlocal tabstop=2 shiftwidth=2"
vim.cmd "autocmd FileType typescriptcommon setlocal tabstop=2 shiftwidth=2"


