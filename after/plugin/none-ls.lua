local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		-- null_ls.builtins.completion.spell,
		require("none-ls.diagnostics.eslint"),
	},
})

-- keymaps
vim.keymap.set('n', '<leader>gf', function() vim.lsp.buf.format() end)
