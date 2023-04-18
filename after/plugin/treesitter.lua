require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"vim",
		"help",
		"cpp",
		"rust",
		"bash",
		"lua",
		"dockerfile",
		"gitignore",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
