require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "rust", "python", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },


  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
