---@type vim.lsp.Config
return {
  cmd = { vim.fs.joinpath(vim.fn.stdpath("data"), "mason/bin/lua-language-server.cmd")},
  filetypes = { 'lua' },
  root_markers = {
    '.emmyrc.json',
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
  settings = {
    Lua = {
      workspace = {
	library = vim.api.nvim_get_runtime_file("", true),
      }
    }
  }
}
