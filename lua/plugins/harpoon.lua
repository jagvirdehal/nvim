return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = function()
			local harpoon = require("harpoon")
			local keys = {
				{
					"<leader>a",
					function() harpoon:list():add() end,
					desc = "Harpoon [a]dd file",
				},
				{
					"<leader>h",
					function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
					desc = "[h]arpoon quick menu",
				},
			}

			for i = 1, 5 do
				table.insert(keys, {
					"<leader>" .. i,
					function()
						require("harpoon"):list():select(i)
					end,
					desc = "Harpoon to file [" .. i .. "]",
				})
			end	

			return keys
		end
	}
}
