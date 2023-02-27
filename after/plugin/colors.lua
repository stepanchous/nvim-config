function ColorMyPencils(color)
	color = color or "dracula"
	vim.cmd.colorscheme(color)
	vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
