return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"cmake",
					"cssls",
					"dockerls",
					"docker_compose_language_service",
					"dotls",
					"eslint",
					"gopls",
					"html",
					"java_language_server",
					"tsserver",
					"autotools-language-server",
					"marksman",
					"pyright",
					"sqls",
					"yamlls",
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.cmake.setup({})
			lspconfig.cssls.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.docker_compose_language_service.setup({})
			lspconfig.dotls.setup({})
			lspconfig.eslint.setup({})
			lspconfig.gopls.setup({})
			lspconfig.html.setup({})
			lspconfig.java_language_server.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.marksman.setup({})
			lspconfig.pyright.setup({})
			lspconfig.sqls.setup({})
			lspconfig.yamlls.setup({})

			local opts = {}
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
			vim.keymap.set('n', '<space>f', function()
				vim.lsp.buf.format { async = true }
			end, opts)
		end
	}
}
