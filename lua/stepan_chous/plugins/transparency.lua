return {
	"xiyaowong/transparent.nvim",
	lazy = false,
	config = function()
		local transparency = require("transparent")
		transparency.setup({
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = {
				"NormalFloat",
				"NvimTreeNormal",
				"NvimTreeNormalNC",
				"NvimTreeNormalFloat",
				"NvimTreeEndOfBuffer",
				"CursorLineNr",
				"FloatBorder",
				"Pmenu",
				"LazyNormal",
				"TelescopeNormal",
			},
			exclude_groups = {},
		})

		transparency.clear_prefix("BufferLineDevIcon")
		transparency.clear_prefix("BufferLine")
		transparency.clear_prefix("NvimTree")
		transparency.clear_prefix("Lualine")
		transparency.clear_prefix("GitSigns")
		transparency.clear_prefix("DiagnosticSign")
	end,

	enabled = true,
}
