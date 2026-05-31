require("config.remap")
require("config.options")
require("config.lazy")
require("config.autocommands")

-- rust analyzer setup by rust plugin in lsp.lua
local lsp_enabled = {"lua_ls", "ruff", "rust-analyzer", "clangd", "nixd", "marksman"}

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

