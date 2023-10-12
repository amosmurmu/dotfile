
-- TRYING NEOVIM AS IDE
--
--

return require('packer').startup(function(use)
  -- Configurations will go here soon
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'   
        use 'williamboman/mason-lspconfig.nvim'
        use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
    	use 'hrsh7th/cmp-nvim-lua'
    	use 'hrsh7th/cmp-nvim-lsp-signature-help'
   	use 'hrsh7th/cmp-vsnip'                             
    	use 'hrsh7th/cmp-path'                              
    	use 'hrsh7th/cmp-buffer'                            
    	use 'hrsh7th/vim-vsnip'
	use {
  'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
 }

use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

 use 'Mofiqul/dracula.nvim'
	use 'itchyny/lightline.vim'  -- Lightline.vim
    	use 'hsanson/vim-android'
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
}
	use 'preservim/tagbar'
end)


