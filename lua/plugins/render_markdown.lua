return {
	{
		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
		config = function()
			require("render-markdown").setup({
				file_types = { "markdown" },
				render_modes = { "n", "c" },
				-- Only attach to normal file buffers
				on = {
					attach = function(bufnr)
						local buftype = vim.api.nvim_get_option_value("buftype", { buf = bufnr })
						return buftype == ""
					end
				}
			})
		end
	}
}
