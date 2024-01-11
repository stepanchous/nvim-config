return {
	"mbbill/undotree",
	lazy = false,

	init = function()
		vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/.undodir"
	end,

	keys = {
		{ "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Undotree" },
	},
}
