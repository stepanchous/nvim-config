return {
	"RaafatTurki/hex.nvim",

	config = function()
		require("hex").setup()
	end,
	keys = {
		{ "<leader>ht", "<cmd>HexToggle<cr>", desc = "Hex editor" },
	},
}
