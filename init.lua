require("daniel.plugins-setup")
require("daniel.core.options")
require("daniel.core.keymaps")
require("daniel.core.colorscheme")
require("daniel.plugins.comment")
require("daniel.plugins.nvim-tree")
require("daniel.plugins.lualine")
require("daniel.plugins.telescope")
require("daniel.plugins.nvim-cmp")
require("daniel.plugins.lsp.mason")
require("daniel.plugins.lsp.lspsaga")
require("daniel.plugins.lsp.lspconfig")
require("daniel.plugins.lsp.null-ls")
require("daniel.plugins.autopairs")
require("daniel.plugins.treesitter")
require("daniel.plugins.gitsigns")

local foldmethod_status, _ = pcall(vim.cmd, "set foldmethod=syntax")
if not foldmethod_status then
  print("Error: unable to set the fold method")
  return
end
