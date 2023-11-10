-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Map leader + w to write (save)
-- Map leader + w to write (save)
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

-- Map leader + q to write (save) and quit
vim.api.nvim_set_keymap("n", "<leader>q", ":wq<CR>", { noremap = true, silent = true })

-- Map jk or kj to escape to normal mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })
