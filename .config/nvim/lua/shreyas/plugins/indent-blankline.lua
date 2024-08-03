return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	opts = {},
	config = function()
		local hooks = require("ibl.hooks")
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#8B4B4B", blend = 30 }) -- Muted red, 30% blend
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#C4A46D", blend = 30 }) -- Muted yellow, 30% blend
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#4A6F94", blend = 30 }) -- Muted blue, 30% blend
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#9F6D4C", blend = 30 }) -- Muted orange, 30% blend
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#6A8B5A", blend = 30 }) -- Muted green, 30% blend
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#8C5A99", blend = 30 }) -- Muted violet, 30% blend
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#4A8F99", blend = 30 }) -- Muted cyan, 30% blend
			vim.api.nvim_set_hl(0, "CustomColor", { fg = "#36454F", blend = 30 }) -- Muted cyan, 30% blend
		end)
		require("ibl").setup({
			indent = {
				highlight = {
					"CustomColor",
				},
			},
			scope = {
				highlight = "RainbowOrange", -- Use this color highlight for the current scope
			},
		})
	end,
}
