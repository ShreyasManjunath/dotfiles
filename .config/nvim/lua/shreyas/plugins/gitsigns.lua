return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	signcolumn = true,
	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
			end

			-- Navigation
			map("n", "]H", gs.next_hunk, "Next Hunk")
			map("n", "[H", gs.prev_hunk, "Prev Hunk")

			-- Actions
			map("n", "<leader>Hs", gs.stage_hunk, "Stage hunk")
			map("n", "<leader>Hr", gs.reset_hunk, "Reset hunk")
			map("v", "<leader>Hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Stage hunk")
			map("v", "<leader>Hr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Reset hunk")

			map("n", "<leader>HS", gs.stage_buffer, "Stage buffer")
			map("n", "<leader>HR", gs.reset_buffer, "Reset buffer")

			map("n", "<leader>Hu", gs.undo_stage_hunk, "Undo stage hunk")

			map("n", "<leader>Hp", gs.preview_hunk, "Preview hunk")

			map("n", "<leader>Hb", function()
				gs.blame_line({ full = true })
			end, "Blame line")
			map("n", "<leader>HB", gs.toggle_current_line_blame, "Toggle line blame")

			map("n", "<leader>Hd", gs.diffthis, "Diff this")
			map("n", "<leader>HD", function()
				gs.diffthis("~")
			end, "Diff this ~")

			-- Text object
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk")
		end,
	},
}
