return {
	{
		"NeogitOrg/neogit",
		lazy = true,
		dependencies = {
			-- Only one of these is needed.
			"sindrets/diffview.nvim", -- optional

			-- Only one of these is needed.
			"nvim-telescope/telescope.nvim", -- optional
		},
		cmd = "Neogit",
		keys = {
			{ "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
		}
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})

			-- keymaps
			vim.keymap.set('n', '<leader>hp', ":Gitsigns preview_hunk<CR>", {})
		end
	}
}
