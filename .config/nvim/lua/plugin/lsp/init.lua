local lspconfig_status_ok, _ = pcall(require, "lspconfig")

if not lspconfig_status_ok then
  vim.notify("lspconfig not found")
  return
end

require "plugin.lsp.mason"
