require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"vim",
		"cpp",
		"rust",
		"bash",
		"lua",
		"dockerfile",
		"gitignore",
		"markdown",
		"markdown_inline",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
