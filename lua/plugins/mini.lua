return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.ai").setup()
			require("mini.pairs").setup()
			require("mini.statusline").setup()
			require("mini.icons").setup()
			require("mini.move").setup() -- Alt + hjkl
			-- require("mini.indentscope").setup()
		end,
	},
}
