-- Automatically install packer.nvim if it's not installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Initialize packer
vim.cmd('packadd packer.nvim')
require('packer').init()










require('set')
require('plugins')
require('mason-config')
require('file-explorer')
require('styling')
-- require('code-completion') 
require('java')
