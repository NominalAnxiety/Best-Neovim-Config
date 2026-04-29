require("config.remap")
require("config.options")
require("config.lazy")
require("config.autocommands")


local lsp_enabled = {"lua_ls", "pylsp", "clangd", "rust_analyzer", "nixd"}

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

