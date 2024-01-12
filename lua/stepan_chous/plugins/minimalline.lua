return {
	"javiorfo/nvim-minimaline",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		require("minimaline").setup({
			disabled_filetypes = { "NvimTree*", "OUTLINE" },
			lsp_colors_enabled = false,
		})
	end,
}
