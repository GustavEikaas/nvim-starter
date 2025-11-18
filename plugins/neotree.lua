return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({})

		vim.keymap.set("n", "<leader>e", function()
			vim.cmd("Neotree reveal")
		end, { nowait = true })

		vim.keymap.set("n", "<C-n>", function()
			vim.cmd("Neotree reveal toggle")
		end, { nowait = true })
	end,
}
