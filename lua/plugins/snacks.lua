return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			-- scroll = { enabled = true }, -- this animates when I do control d
			statuscolumn = { enabled = true },
			words = { enabled = true },
			-- terminal = { enabled = true } -- was hard to toggle off
		},
		keys = {
			-- picker
			{ "<leader>f", function() Snacks.picker.smart() end,            desc = "Smart Find Files" },
			{ "<leader>,", function() Snacks.picker.buffers() end,          desc = "Buffers" },
			{ "<leader>/", function() Snacks.picker.grep() end,             desc = "Grep" },
			{ "<leader>:", function() Snacks.picker.command_history() end,  desc = "Command History" },
			{ "<leader>n", function() Snacks.picker.notifications() end,    desc = "Notification History" },
			{ "<leader>e", function() Snacks.explorer() end,                desc = "File Explorer" },
			-- terminal
			{ "<c-/>",     function() Snacks.terminal() end,                desc = "Toggle Terminal"},
			-- words
			{ "]]",        function() Snacks.words.jump(vim.v.count1) end,  desc = "Next Reference",      mode = { "n", "t" } },
			{ "[[",        function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference",      mode = { "n", "t" } },
		},
	}
}
