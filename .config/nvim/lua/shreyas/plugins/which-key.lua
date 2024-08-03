return {
	"folke/which-key.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.nvim" },
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},

	config = function()
		local wk = require("which-key")

		wk.setup({})

		wk.add({
			{ "<leader>e", "", desc = "file tree explorer" },
			{ "<leader>f", "", desc = "fuzzy finder" },
			{ "<leader>h", "", desc = "Harpoon" },
			{ "<leader>l", "", desc = "Lazy Git" },
			{ "<leader>s", "", desc = "Neovim window split" },
			{ "<leader>t", "", desc = "Neovim Tabs" },
		})
	end,
}
