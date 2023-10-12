-- init.lua
local lspconfig = require('lspconfig')

-- Java LSP using Eclipse JDTLS
lspconfig.jdtls.setup{}

-- (Optional) Add other LSP configurations for Android development
lspconfig.kotlin_language_server.setup{}
--lspconfig.gradle.setup{}

-- init.lua
-- Vim-android configuration (if needed)
vim.g.vim_android_java_home = '/usr/lib/jvm/default'  -- Set your Java home path

-- Set the Android SDK path (replace with your Android SDK path)
vim.g.vim_android_sdk_path = '/home/amos-murmu/Android/Sdk'

-- Load vim-android
vim.cmd [[runtime plugin/android.vim]]

-- Keybindings for vim-android

-- Compile and run current Java file (vim-android)
vim.api.nvim_set_keymap('n', '<Leader>aj', '<Cmd>VimAndroidRun()<CR>', { noremap = true, silent = true })

-- Compile and install current Android project (vim-android)
vim.api.nvim_set_keymap('n', '<Leader>ai', '<Cmd>VimAndroidInstall()<CR>', { noremap = true, silent = true })

-- Start a new Android project (vim-android)
vim.api.nvim_set_keymap('n', '<Leader>an', '<Cmd>VimAndroidNew()<CR>', { noremap = true, silent = true })

-- Compile current Java file without running (vim-android)
vim.api.nvim_set_keymap('n', '<Leader>ac', '<Cmd>VimAndroidCompile()<CR>', { noremap = true, silent = true })

-- Keybindings for jdtls

-- Go to definition
vim.api.nvim_set_keymap('n', '<Leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

-- Find references
vim.api.nvim_set_keymap('n', '<Leader>gr', '<Cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })

-- Rename symbol
vim.api.nvim_set_keymap('n', '<Leader>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })

-- Hover for information
vim.api.nvim_set_keymap('n', '<Leader>K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- Signature help
vim.api.nvim_set_keymap('n', '<Leader>s', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })

-- Format the code
vim.api.nvim_set_keymap('n', '<Leader>f', '<Cmd>lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })

-- Show diagnostics in a floating window
-- vim.api.nvim_set_keymap('n', '<Leader>d', '<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', { noremap = true, silent = true })
-- Show diagnostics in a floating window (alternative method)
vim.api.nvim_set_keymap('n', '<Leader>d', '<Cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', { noremap = true, silent = true })

-- Navigate through diagnostics
vim.api.nvim_set_keymap('n', '[d', '<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d', '<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

