return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },

	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "Harpoon add" })
		vim.keymap.set("n", "<leader>ht", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "open harpoon window" })

		vim.keymap.set("n", "<a-1>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<a-2>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<a-3>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<a-4>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>p", function()
			harpoon:list():prev()
		end, { desc = "harpoon previous buffer" })
		vim.keymap.set("n", "<leader>n", function()
			harpoon:list():next()
		end, { desc = "harpoon next buffer" })
		vim.keymap.set("n", "<leader>hf", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open harpoon window in fuzzy finder" })
	end,
}
