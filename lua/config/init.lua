require("config.remap")
require("config.lazy")

lsp_enabled = {"luals", "pyright", "clangd", "rust_analyzer"}
vim.lsp.enable(lsp_enabled)

