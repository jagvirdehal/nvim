return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			-- load colorscheme here
			vim.cmd.colorscheme "catppuccin-macchiato"
		end
	}
}
