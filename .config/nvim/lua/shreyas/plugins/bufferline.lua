return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {},

	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				styling = {
					separator_style = "slant",
				},

				highlights = {
					fill = {
						bg = {
							attribute = "fg",
							highlight = "Pmenu",
						},
					},
				},
			},
		})
	end,
}

-- return {
-- 	"willothy/nvim-cokeline",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim", -- Required for v0.4.0+
-- 		"nvim-tree/nvim-web-devicons", -- If you want devicons
-- 		"stevearc/resession.nvim", -- Optional, for persistent history
-- 	},
--
-- 	config = function()
-- 		local get_hex = require("cokeline.hlgroups").get_hl_attr
--
-- 		require("cokeline").setup({
-- 			default_hl = {
-- 				fg = function(buffer)
-- 					return buffer.is_focused and get_hex("ColorColumn", "bg") or get_hex("Normal", "fg")
-- 				end,
-- 				bg = function(buffer)
-- 					return buffer.is_focused and get_hex("Normal", "fg") or get_hex("ColorColumn", "bg")
-- 				end,
-- 			},
--
-- 			components = {
-- 				{
-- 					text = function(buffer)
-- 						return " " .. buffer.devicon.icon
-- 					end,
-- 					fg = function(buffer)
-- 						return buffer.devicon.color
-- 					end,
-- 				},
-- 				{
-- 					text = function(buffer)
-- 						return buffer.index .. ": "
-- 					end,
-- 				},
-- 				{
-- 					text = function(buffer)
-- 						return buffer.unique_prefix
-- 					end,
-- 					fg = get_hex("Comment", "fg"),
-- 					italic = true,
-- 				},
-- 				{
-- 					text = function(buffer)
-- 						return buffer.filename .. " "
-- 					end,
-- 					underline = function(buffer)
-- 						return buffer.is_hovered and not buffer.is_focused
-- 					end,
-- 				},
-- 				{
-- 					text = function(buffer)
-- 						if buffer.is_modified then
-- 							return ""
-- 						end
-- 						if buffer.is_hovered then
-- 							return "󰅙"
-- 						end
-- 						return "󰅖"
-- 					end,
-- 					on_click = function(_, _, _, _, buffer)
-- 						buffer:delete()
-- 					end,
-- 				},
-- 				{
-- 					text = " ",
-- 				},
-- 			},
-- 		})
-- 	end,
-- }
