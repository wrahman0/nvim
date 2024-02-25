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
					"cssls",
					"eslint",
					"gopls",
					"html",
					"tsserver",
					"pyright",
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local opts = {}

			lspconfig.lua_ls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.eslint.setup({})
			lspconfig.gopls.setup({})
			lspconfig.html.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.pyright.setup({})

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
