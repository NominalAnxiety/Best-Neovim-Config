
-- lsp commands
vim.api.nvim_create_autocmd("LspAttach", {
	-- group = vim.api.nvim_create_augroup("LspKeybinds", { clear = true }),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gd",         vim.lsp.buf.definition,      opts)
		vim.keymap.set("n", "gD",         vim.lsp.buf.declaration,     opts)
		vim.keymap.set("n", "gi",         vim.lsp.buf.implementation,  opts)
		vim.keymap.set("n", "gr",         vim.lsp.buf.references,      opts)
		vim.keymap.set("n", "K",          vim.lsp.buf.hover,           opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,          opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,     opts)
		vim.keymap.set("n", "<leader>d",  vim.diagnostic.open_float,   opts)
		vim.keymap.set("n", "[d",         vim.diagnostic.goto_prev,    opts)
		vim.keymap.set("n", "]d",         vim.diagnostic.goto_next,    opts)
	end,
})


-- treesitter related
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldenable = false

-- file preferences
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("TreesitterIndent", { clear = true }),
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

-- treesitter highlighting (needs buffer content to exist)
vim.api.nvim_create_autocmd({ "FileType", "BufReadPost" }, {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})


-- make netrw have relative line numbers
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("NetrwCustom", { clear = true }),
	pattern = "netrw",
	callback = function()
		vim.opt_local.number = true
		vim.opt_local.relativenumber = true
	end,
})


