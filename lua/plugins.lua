-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- THEMES
	use { "catppuccin/nvim", as = "catppuccin" } -- catppuccin
	use { "morhetz/gruvbox", as = "gruvbox" }
	use { "ldelossa/vimdark", as = "vimdark" }
	use { "hachy/eva01.vim", as = "eva01" } -- neon
	use { "savq/melange-nvim", as = "melange" } -- mars
	use { "EdenEast/nightfox.nvim", as = "nightfox" } -- uranus
	use { "smallwat3r/vim-efficient", as = "vim-efficient" }
	use { "zacanger/angr.vim", as = "angr" }
	use { "pbrisbin/vim-colors-off", as = "vim-colors-off" }


	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig'
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { 
			{'nvim-lua/plenary.nvim'},
			{'nvim-tree/nvim-web-devicons'}		
		}
	}

	use { "nikolvs/vim-sunbather", as = "sunbather" }


	use { 'neoclide/coc.nvim', branch = 'release' }

	use 'cdelledonne/vim-cmake'

	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
  		"nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	requires = { 
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim",
    	}
  	}

	use 'norcalli/nvim-colorizer.lua'

	use 'rhysd/vim-clang-format'

	use 'numToStr/Comment.nvim'
end)

