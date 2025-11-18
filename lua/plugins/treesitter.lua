return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    init = function()
      local parser_installed = {
        "python",
        "go",
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown_inline",
        "markdown",
        "c_sharp",
      }

      vim.defer_fn(function()
        require("nvim-treesitter").install(parser_installed)
      end, 1000)
      require("nvim-treesitter").update()

      vim.api.nvim_create_autocmd("FileType", {
        desc = "User: enable treesitter highlighting",
        callback = function(ctx)
          local hasStarted = pcall(vim.treesitter.start)

          local noIndent = {}
          if hasStarted and not vim.list_contains(noIndent, ctx.match) then
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
