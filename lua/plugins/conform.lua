return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt" },
				c = { "clang-format" },
				cpp = { "clang-format" },
			},
			formatters = {
				["clang-format"] = {
					prepend_args = { "--style=llvm" }, -- Forces Google style if no .clang-format file exists
				},
			}
		},
	},
}
