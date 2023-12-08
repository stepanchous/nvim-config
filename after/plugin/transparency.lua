local tr = require("transparent")

tr.setup({
	lazy = false,
	opts = {
		-- table: default groups
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
			"CursorLineNr",
			"EndOfBuffer",
		},
		-- table: additional groups that should be cleared
		extra_groups = {
			"NormalFloat",
			"NvimTreeNormal",
			"NvimTreeNormalNC",
			"NvimTreeNormalFloat",
			"NvimTreeEndOfBuffer",
			"CursorLineNr",
		},
		-- table: groups you don't want to clear
		exclude_groups = {},
	},
	keys = {
		{ "<leader>T", "<cmd>TransparentToggle<CR>", desc = "Toggle transparency" },
	},
})

tr.clear_prefix("BufferLine")
tr.clear_prefix("NvimTree")
tr.clear_prefix("Lualine")
tr.clear_prefix("GitSigns")
tr.clear_prefix("DiagnosticSign")
