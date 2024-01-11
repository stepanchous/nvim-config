return {
  "mbbill/undotree",

  init = function()
    vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/.undodir"
  end,

  keys = {
    {"<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Undotree"}
  }
}
