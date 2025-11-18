return {
  "saghen/blink.cmp",
  version = "*",
  dependencies = { "moyiz/blink-emoji.nvim" },
  config = function()
    require("blink.cmp").setup {
      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
      keymap = {
        ["<CR>"] = { "select_and_accept", "fallback" },
        ["<C-a>"] = {},
        ["<Tab>"] = { "select_next" },
        ["<S-Tab>"] = { "select_prev" },
        ["<C-d>"] = { "scroll_documentation_down" },
        ["<C-u>"] = { "scroll_documentation_up" },
      },
    }
  end,
}
