-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--
--   config = function()
--     require("kanagawa").setup({
--       compile = false, -- enable compiling the colorscheme
--       undercurl = true, -- enable undercurls
--       commentStyle = { italic = true },
--       functionStyle = {},
--       keywordStyle = { italic = false },
--       statementStyle = { bold = false },
--       transparent = false, -- do not set background color
--       dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--       terminalColors = true, -- define vim.g.terminal_color_{0,17}
--       theme = "wave", -- Load "wave" theme when 'background' option is not set
--       background = { -- map the value of 'background' option to a theme
--         dark = "wave", -- try "dragon" !
--         light = "lotus",
--       },
--     })
--
--     vim.cmd("colorscheme kanagawa")
--   end,
-- }

return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,

	config = function()
		vim.cmd("set background=dark")
		vim.cmd("let g:gruvbox_material_background = 'hard'")
		vim.cmd("let g:gruvbox_material_better_performance = 1")
		vim.cmd("colorscheme gruvbox-material")
	end,
}
