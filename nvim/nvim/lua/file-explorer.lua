-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- init.lua
vim.cmd('nnoremap <C-n> :NvimTreeToggle<CR>')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('nvim-tree').setup{}
vim.cmd('set laststatus=2')  -- Always show the statusline

-- Configure the Lightline colorscheme (change to your desired colorscheme)
vim.cmd('let g:lightline = { "colorscheme": "one" }')

