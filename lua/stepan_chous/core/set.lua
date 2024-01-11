local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.backspace = "indent,eol,start"

opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.wrap = false

opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.clipboard = "unnamedplus"

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.splitright = true
opt.splitbelow = true

opt.showmode = false

opt.updatetime = 50

opt.termguicolors = true

vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
