function ColorMyPencils(color)
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "DiagnosticError", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })

	vim.api.nvim_set_hl(0, "Minimaline", { bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspError", { bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspWarn", { bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspHint", { bg = "none" })
	vim.api.nvim_set_hl(0, "MinimalineLspInfo", { bg = "none" })
end
--
ColorMyPencils()
