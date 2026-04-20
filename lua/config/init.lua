require("config.remap")
require("config.options")
require("config.lazy")
require("config.autocommands")


local lsp_enabled = {"luals", "pyright", "clangd", "rust_analyzer"}

-- makes vim. global
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

vim.lsp.enable(lsp_enabled)

