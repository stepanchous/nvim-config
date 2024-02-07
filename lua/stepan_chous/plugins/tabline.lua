return {
	"seblj/nvim-tabline",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("tabline").setup({
			no_name = "[No Name]", -- Name for buffers with no name
			max_name_length = 10,
			modified_icon = "", -- Icon for showing modified buffer
			close_icon = "", -- Icon for closing tab with mouse
			separator = "|", -- Separator icon on the left side
			padding = 1, -- Prefix and suffix space
			color_all_icons = false, -- Color devicons in active and inactive tabs
			right_separator = true, -- Show right separator on the last tab
			show_index = false, -- Shows the index of tab before filename
			show_icon = true, -- Shows the devicon
		})
	end,

	enabled = true,
}
