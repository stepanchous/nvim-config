return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			require("kanagawa").setup({
				compile = false, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = false },
				statementStyle = { bold = false },
				transparent = false, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true, -- define vim.g.terminal_color_{0,17}
				theme = "wave", -- Load "wave" theme when 'background' option is not set
				background = { -- map the value of 'background' option to a theme
					dark = "wave", -- try "dragon" !
					light = "lotus",
				},
			})

			vim.cmd("colorscheme kanagawa")
		end,

		enabled = false,
	},

	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,

		config = function()
			vim.cmd("set background=dark")
			vim.cmd("let g:gruvbox_material_background = 'hard'")
			vim.cmd("let g:gruvbox_material_better_performance = 1")
			vim.cmd("colorscheme gruvbox-material")
		end,

		enabled = false,
	},

	{
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1000,
		keys = { { "<leader>c", "<cmd>MonokaiProSelect<cr>", desc = "Select Moonokai pro filter" } },
		config = function()
			local monokai = require("monokai-pro")
			monokai.setup({
				styles = {
					comment = { italic = true },
					keyword = { italic = false },
					type = { italic = false },
					storageclass = { italic = false }, -- static, register, volatile, etc
					structure = { italic = false }, -- struct, union, enum, etc
					parameter = { italic = false }, -- parameter pass in function
					annotation = { italic = true },
					tag_attribute = { italic = true }, -- attribute of tag in reactjs
				},
				transparent_background = true,
				devicons = true,
				filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
				day_night = {
					enable = false,
					day_filter = "classic",
					night_filter = "octagon",
				},
				inc_search = "background", -- underline | background
				background_clear = {
					"float_win",
					"telescope",
				},
				plugins = {
					bufferline = {
						underline_selected = true,
						underline_visible = false,
						bold = false,
					},
					indent_blankline = {
						context_highlight = "pro", -- default | pro
						context_start_underline = true,
					},
				},
			})
			monokai.load()
		end,

		enabled = true,
	},
}
