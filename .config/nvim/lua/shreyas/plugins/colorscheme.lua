return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				telescope = true,
				which_key = true,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
				highlight_overrides = {
					mocha = function(C)
						return {
							TabLineSel = { bg = C.pink },
							CmpBorder = { fg = C.surface2 },
							Pmenu = { bg = C.none },
							TelescopeBorder = { link = "FloatBorder" },
						}
					end,
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
