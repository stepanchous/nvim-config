return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		use_diagnostic_signs = true,
	},
	keys = {
		{ "<leader>tr", "<cmd>TroubleToggle<cr>", desc = "Trouble" },
	},
}
