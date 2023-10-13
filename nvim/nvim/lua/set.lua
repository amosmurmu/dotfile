
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

-- Save and quit with leader key followed by 'wq'
-- vim.api.nvim_set_keymap('n', '<Leader>wq', [[<Cmd>wq<CR>]], { noremap = true, silent = true })

-- Quit with leader key followed by 'q'

vim.api.nvim_set_keymap('n', '<Leader>q', [[<Cmd>q<CR>]], { noremap = true, silent = true })


-- Enable Emmet for HTML and XML files
vim.cmd("autocmd FileType html,xml EmmetInstall")

-- Enable Emmet for other file types (e.g., JSX)
vim.cmd("autocmd FileType jsx EmmetInstall")

-- Toggle comments using Ctrl+/
vim.api.nvim_set_keymap('n', '<C-/>', [[:lua CommentToggle()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-/>', [[<C-\><C-O>:lua CommentToggle()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-/>', [[:lua CommentToggleVisual()<CR>]], { noremap = true, silent = true })

-- Define the CommentToggle function
function CommentToggle()
  if vim.bo.commentstring and vim.bo.commentstring ~= '' then
    vim.api.nvim_command('execute "normal! " . &commentstring')
  end
end

function CommentToggleVisual()
  if vim.bo.commentstring and vim.bo.commentstring ~= '' then
    local start_visual = vim.fn.getpos("'<")
    local end_visual = vim.fn.getpos("'>")
    vim.api.nvim_command('normal! gv' .. vim.bo.commentstring)
    vim.fn.setpos("'<", start_visual)
    vim.fn.setpos("'>", end_visual)
  end
end

-- Use the system clipboard for yanked lines
vim.o.clipboard = "unnamedplus"
vim.opt.termguicolors = true
require("bufferline").setup{}
