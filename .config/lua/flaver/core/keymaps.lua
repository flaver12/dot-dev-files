vim.g.mapleader = " " -- spacebar

local keymap = vim.keymap


if not keymap then 
    print("keymap is not detected! use 7.x")
    return
end

-- general keymaps
-- ================================
-- mode, key, command
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clears al search highlights
keymap.set("n", "x", '"_x') -- delete first char but do not cut it
keymap.set("n", "<leader>+", "<C-a>") --up number by one
keymap.set("n", "<leader>-", "<C-x>") -- down number by one

-- split window
keymap.set("n", "<leader>sv", "<C-w>v") --split vertical
keymap.set("n", "<leader>sh", "<C-w>s") --split horizontal
keymap.set("n", "<leader>se", "<C-w>=") --make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") --close current split window


-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") --close current table
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --previos tab
-- =================================

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
