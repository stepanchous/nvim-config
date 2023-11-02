local ft = require("guard.filetype")

ft("c"):fmt("clang-format")
ft("cpp"):fmt("clang-format")
ft("h"):fmt("clang-format")
ft("hpp"):fmt("clang-format")
ft("cc"):fmt("clang-format")

ft("lua"):fmt("stylua")

require("guard").setup({
	fmt_on_save = true,
})
