function ColorMyPencils(color)
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "DiagnosticError", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })

	vim.api.nvim_set_hl(0, "Minimaline", { fg = "#C8C093", bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspError", { fg = "#C8C093", bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspWarn", { fg = "#C8C093", bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspHint", { fg = "#C8C093", bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspInfo", { fg = "#C8C093", bg = "none" })
end
--
ColorMyPencils()
