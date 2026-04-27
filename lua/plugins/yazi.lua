return {
	{
		"mikavilpas/yazi.nvim",
		version = "*",
		event = "VeryLazy",
		dependencies = {
			{ "nvim-lua/plenary.nvim", lazy = true },
		},
		opts = {
			floating_window_border = "none",
			floating_window_winblend = 0,
			highlight_normal = true,
			floating_window = true,
		},
	},
}
