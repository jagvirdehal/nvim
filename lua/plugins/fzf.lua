return {
	{
		"ibhagwan/fzf-lua",
		-- optional for icon support
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
		-- or if using mini.icons/mini.nvim
		dependencies = { "echasnovski/mini.icons" },
		opts = {},
		lazy = true,
		keys = {
			{"<leader>sf", "<cmd>FzfLua files<cr>", desc = "[s]earch [f]iles"},
			{"<leader>sg", "<cmd>FzfLua grep<cr>", desc = "[s]earch [g]rep"},
		}
	}
}
