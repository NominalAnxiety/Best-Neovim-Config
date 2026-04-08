function ColorMyPencils(color)
	-- set the color as catppuccin
	color = color or "catppuccin-macchiato"
	vim.cmd.colorscheme(color)
	
	-- set the background transparent
	-- vim.api.nvim_set_hl(0,"Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none" })
end

ColorMyPencils()
