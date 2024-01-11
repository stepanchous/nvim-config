return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    require("luasnip/loaders/from_vscode").lazy_load()

    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    vim.opt.completeopt = "menu,menuone,noinsert"

    local format_fn = function(_, item)
      item.menu = ""
      local fixed_width = 40
      local content = item.abbr

      if fixed_width then
        vim.o.pumwidth = fixed_width
      end

      local win_width = vim.api.nvim_win_get_width(0)

      local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.2)

      if #content > max_content_width then
        item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
      else
        item.abbr = content .. (" "):rep(max_content_width - #content)
      end

      return item
    end

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- lsp
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      }),
      formatting = {
        fields = { "abbr", "kind" },
        format = lspkind.cmp_format({
          maxwidth = 40,
          ellipsis_char = "...",
          before = format_fn,
        }),
      },
      window = {
        completion = {
          border = "rounded",
        },
        documentation = { border = "rounded" },
      },
      completion = {
        completeopt = 'menu,menuone,noinsert'
      },
    })
  end,
}
