return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				custom_highlights = {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					TelescopeBorder = { bg = "none" }
				}
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	}
}
