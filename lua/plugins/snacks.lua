return {
  "folke/snacks.nvim",
  opts = {
     picker = {
     }
   },
   keys = {
    { "<leader><leader>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>fw", function() Snacks.picker.grep() end, desc = "Grep" },
  }
}
