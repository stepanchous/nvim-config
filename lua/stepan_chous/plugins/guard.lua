return {
	"nvimdev/guard.nvim",
	dependencies = {
		"nvimdev/guard-collection",
	},
	lazy = false,
	config = function()
		local ft = require("guard.filetype")

		ft("c,cpp,h,hpp,cc,cxx"):fmt("clang-format")

		ft("lua"):fmt("stylua")

		require("guard").setup({
			fmt_on_save = true,
		})
	end,
}
