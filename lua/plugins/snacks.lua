return {
  "folke/snacks.nvim",
   keys = {
    { "<leader><leader>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>fw", function() Snacks.picker.grep() end, desc = "Grep" },
  }
}
