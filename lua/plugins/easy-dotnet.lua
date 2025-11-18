return
{
  "GustavEikaas/easy-dotnet.nvim",
  dependencies = { "nvim-lua/plenary.nvim", 'folke/snacks.nvim', },
  config = function()
    require("easy-dotnet").setup({
      debugger = {
        bin_path = vim.fs.joinpath(vim.fn.stdpath("data"), "mason/bin/netcoredbg.cmd"),
      },
      test_runner = {
        viewmode = "float"
      }
    })
  end
}
