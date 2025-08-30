return {
	{
    "mason-org/mason-lspconfig.nvim",
    opts = {
			ensure_installed = { "lua_ls", "rust_analyzer" },
		},
    dependencies = {
        { "mason-org/mason.nvim", opts = {}, auto_instal = true },
        "neovim/nvim-lspconfig",
    },
	}
}
