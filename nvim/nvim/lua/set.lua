
-- Disable soft wrap
vim.opt.wrap = false

-- Set "jk" as the escape sequence
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })

-- Alternatively, you can set "kj" as the escape sequence
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true })

-- Keybinding for tagbar
vim.api.nvim_set_keymap('n', '<C-t>', [[<Cmd>TagbarToggle<CR>]], { noremap = true, silent = true })

-- Set the leader key to space ( )
vim.api.nvim_set_keymap('n', ' ', '', {})
vim.g.mapleader = ' '

-- Save the current buffer with the leader key followed by 'w'
vim.api.nvim_set_keymap('n', '<Leader>w', [[<Cmd>w<CR>]], { noremap = true, silent = true })

--- Quit with leader key followed by 'q'

vim.api.nvim_set_keymap('n', '<Leader>q', [[<Cmd>q<CR>]], { noremap = true, silent = true })


-- Enable Emmet for HTML and XML files
vim.cmd("autocmd FileType html,xml EmmetInstall")

-- Enable Emmet for other file types (e.g., JSX)
vim.cmd("autocmd FileType jsx EmmetInstall")

-- Change Emmet expansion keybinding to Tab
vim.api.nvim_set_keymap('n', '<Tab>', '<Plug>(emmet-expand-abbr)', {})
-- vim.api.nvim_set_keymap('i', '<Tab>', '<Plug>(emmet-expand-abbr)', {})
-- For Lua (init.lua)
vim.g.user_emmet_expandabbr_key = '<Leader>l'

-- Use the system clipboard for yanked lines
vim.o.clipboard = "unnamedplus"
vim.opt.termguicolors = true
require("bufferline").setup{}
