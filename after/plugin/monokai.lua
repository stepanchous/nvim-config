require("monokai-pro").setup({
	transparent_background = true,
	terminal_colors = true,
	devicons = true, -- highlight the icons of `nvim-web-devicons`
	styles = {
		comment = { italic = true },
		keyword = { italic = false }, -- any other keyword
		type = { italic = false }, -- (preferred) int, long, char, etc
		storageclass = { italic = false }, -- static, register, volatile, etc
		structure = { italic = false }, -- struct, union, enum, etc
		parameter = { italic = false }, -- parameter pass in function
		annotation = { italic = true },
		tag_attribute = { italic = true }, -- attribute of tag in reactjs
	},
	filter = "spectrum",
	inc_search = "background",
	background_clear = {
		"float_win",
		"toggleterm",
		"telescope",
		"which-key",
		"renamer",
		"notify",
		"nvim-tree",
		"neo-tree",
	},
})

vim.cmd([[colorscheme monokai-pro]])
