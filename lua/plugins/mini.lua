return {
	{
		'echasnovski/mini.pairs',
		config = function()
			require('mini.pairs').setup({})
		end,
	},
	{
		'echasnovski/mini.comment',
		config = function()
			require('mini.comment').setup({})
		end, -- gcc is toggle comment
	},
	{
		'nvim-mini/mini.indentscope',
		version = '*',
		config = function()
			require('mini.indentscope').setup({})
		end,
	},
	{
		'nvim-mini/mini.statusline',
		version = '*',
		config = function()
			require('mini.statusline').setup({})
		end,
	},

}
