vim.g.mapleader = " "

local keymap = vim.keymap

-- increment and decrement numbers

keymap.set("n", "<leader>+", "<C-a>", { desc = "Inc number"})
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number"})

-- window management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to prev tab"})

keymap.set("n", "<leader>s|", "<C-w>v", { desc = "Window vertical split"})
keymap.set("n", "<leader>s-", "<C-w>s", { desc = "Window horizontal split"})
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make equal split"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split"})

