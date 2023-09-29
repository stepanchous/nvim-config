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
opt.undodir = os.getenv("HOME") .. "/.config/nvim/.undodir"
opt.undofile = true
opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

vim.g.mapleader = " "

opt.splitright = true
opt.splitbelow = true

opt.clipboard:append("unnamedplus")

opt.signcolumn = "yes"
opt.showmode = false

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.schedule(ConfigureLualine)
	end,
})
