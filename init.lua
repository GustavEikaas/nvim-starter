vim.g.mapleader = " "
vim.opt.wrap = false
vim.opt.shiftwidth = 2

-- Escape insert mode easily with jj
vim.keymap.set("i", "jj", "<Esc>", {})
--Save with Ctrl + s
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.opt.clipboard = "unnamedplus"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		import = "plugins",
	},
	change_detection = {
		enabled = false,
		notify = false,
	},
})

vim.cmd("filetype plugin on")
vim.lsp.enable({"lua_ls", "ts_ls"})
