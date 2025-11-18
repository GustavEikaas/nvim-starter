return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    require("easy-dotnet.netcoredbg").register_dap_variables_viewer()
    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<F5>", dap.continue, {})
    vim.keymap.set("n", "q", function()
      dap.close()
    end, {})
    vim.keymap.set("n", "<F10>", dap.step_over, {})
  end
}
