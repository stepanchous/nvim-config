require("transparent").setup({
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
		},
		-- table: groups you don't want to clear
		exclude_groups = {},
	},
	keys = {
		{ "<leader>T", "<cmd>TransparentToggle<CR>", desc = "Toggle transparency" },
	},
})

require("transparent").clear_prefix("BufferLine")
require("transparent").clear_prefix("NeoTree")
-- require("transparent").clear_prefix("lualine")
