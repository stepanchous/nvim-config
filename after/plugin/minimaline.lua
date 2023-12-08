function SetupMiniline()
	require("minimaline").setup({
		disabled_filetypes = { "NvimTree*", "neo-tree*", "NeoTree*", "[Scratch]" },
		lsp_colors_enabled = true,
		style = { fg = 180, bg = 0 },
	})
end

SetupMiniline()
