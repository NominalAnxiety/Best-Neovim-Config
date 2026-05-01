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

-- file preferences
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" }) -- no autocomment when pressing enter
	end,
})

-- catppuccin make transparent autocommand
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		-- base transparency
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
		vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
		-- telescope: title bars
		vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
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
