return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				"gopls",
				"jsonls",
				"yamlls",
				"terraformls",
				"bzl",
				"sqlls",
				"remark_ls",
				"helm_ls",
				"bashls",
				"ansiblels",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"eslint_d", -- js linter
				"stylua", -- lua formatter
				"luacheck", --lua lint
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python linter
				"debugpy", -- python debugger
				"gofumpt", -- go formatter
				"goimports", -- go auto import
				"golines", -- go format fix long lines
				"golangci-lint", -- golangcilint
				"delve", -- go debugger
			},
		})
	end,
}
