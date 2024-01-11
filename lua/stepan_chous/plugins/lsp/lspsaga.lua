return {
    'nvimdev/lspsaga.nvim',
    event = { "LspAttach" },


    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },

    config = function()
      require('lspsaga').setup({
        scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
        definition = {
          keys = {
            edit = "<CR>",
          },
        },
        ui = {
          border = "rounded",
          colors = {
            normal_bg = "#022746",
          },
          code_action = "",
        },
        diagnostic = {
          on_insert = false,
          show_virt_line = false,
        },
      })

      local keymap = vim.keymap

      local opts = { noremap = true, silent = true}

      keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
      keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
      keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
      keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
      keymap.set("n", "<leader>gr", "<cmd>Lspsaga finder<CR>", opts) -- list references
      keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
      keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
      keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
      keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
      keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
      keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
      keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
    end,
}
