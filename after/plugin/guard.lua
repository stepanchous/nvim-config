local ft = require("guard.filetype")

ft("c"):fmt("clang-format"):lint("clang-tidy")
ft("cpp"):fmt("clang-format"):lint("clang-tidy")
ft("h"):fmt("clang-format"):lint("clang-tidy")
ft("hpp"):fmt("clang-format"):lint("clang-tidy")
ft("cc"):fmt("clang-format"):lint("clang-tidy")

ft("lua"):fmt("stylua")

require("guard").setup({
	fmt_on_save = true,
})
