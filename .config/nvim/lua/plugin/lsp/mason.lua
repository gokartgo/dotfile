local servers = {
  "clangd",
  "css_variables",
  "cssls",
  "cssmodules_ls",
  "dockerls",
  "eslint",
  "jdtls",
	"jsonls",   -- node version >= 14
  "lua_ls",
  "omnisharp", -- require dotnet sdk
  "terraformls",
  "tsserver", -- node version >= 14
  "yamlls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("plugin.lsp.handlers").on_attach(server),
		capabilities = require("plugin.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "plugin.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
