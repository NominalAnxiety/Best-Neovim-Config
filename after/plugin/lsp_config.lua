local lspconfig = require("lspconfig")

-- lspconfig.ensure_installed({'stylua'})

-- keymaps (I don't think the autocmd is working)
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, opts)
	end,
})
