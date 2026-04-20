-- lsp commands
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, opts)
	end,
})

-- file preferences
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" }) -- no autocomment when pressing enter
	end,
})
