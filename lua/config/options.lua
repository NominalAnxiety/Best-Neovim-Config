
local indent = 4

-- set the tabstop
vim.opt.tabstop = indent
vim.opt.shiftwidth = indent

-- set up line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- make sure terminal colors are on
vim.opt.termguicolors = true

-- indent
vim.opt.autoindent = true
vim.opt.smartindent = false

-- hovering
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = "rounded",
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = "rounded",
  }
)
