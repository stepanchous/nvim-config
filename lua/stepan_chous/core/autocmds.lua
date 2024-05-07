local function augroup(name)
	return vim.api.nvim_create_augroup("stepan_chous" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "VimResized" }, {
	group = augroup("resize_splits"),
	callback = function()
		local current_tab = vim.fn.tabpagenr()
		vim.cmd("tabdo wincmd =")
		vim.cmd("tabnext " .. current_tab)
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = augroup("close_with_q"),
	pattern = {
		"PlenaryTestPopup",
		"help",
		"lspinfo",
		"man",
		"notify",
		"qf",
		"query",
		"spectre_panel",
		"startuptime",
		"tsplayground",
		"neotest-output",
		"checkhealth",
		"neotest-summary",
		"neotest-output-panel",
	},
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
	end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	desc = "avoid auto insert comment on newline",
	group = augroup("auto_format_options"),
	callback = function()
		vim.cmd("set formatoptions-=cro")
	end,
})

vim.api.nvim_create_autocmd({ "BufWinLeave", "BufWritePost", "WinLeave" }, {
	desc = "remember cursor position, folds of current buffer",
	pattern = "?*",
	group = augroup("remember_folds"),
	callback = function(e)
		if vim.b[e.buf].view_activated then
			vim.cmd.mkview({ mods = { emsg_silent = true } })
		end
	end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	desc = "load cursor position, folds of current buffer",
	pattern = "?*",
	group = augroup("remember_folds"),
	callback = function(e)
		if not vim.b[e.buf].view_activated then
			local filetype = vim.api.nvim_get_option_value("filetype", { buf = e.buf })
			local buftype = vim.api.nvim_get_option_value("buftype", { buf = e.buf })
			local ignore_filetypes = { "gitcommit", "gitrebase" }
			if buftype == "" and filetype and filetype ~= "" and not vim.tbl_contains(ignore_filetypes, filetype) then
				vim.b[e.buf].view_activated = true
				vim.cmd.loadview({ mods = { emsg_silent = true } })
			end
		end
	end,
})
