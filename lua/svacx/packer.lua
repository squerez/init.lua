-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
  }


  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end

  })

  use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
  use("nvim-lua/plenary.nvim")
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('tpope/vim-sensible')
  use('tpope/vim-dadbod')
  use('kristijanhusak/vim-dadbod-completion')
  use('lukas-reineke/indent-blankline.nvim')
  use("folke/twilight.nvim")
  use("laytan/cloak.nvim")
  use("github/copilot.vim")
  use("nvim-telescope/telescope-dap.nvim")
  use("nvim-tree/nvim-web-devicons")
  use("mfussenegger/nvim-dap")
  use("mfussenegger/nvim-dap-python")
  use("theHamsta/nvim-dap-virtual-text")

  use { 'rcarriga/nvim-dap-ui',
	  requires = {
          {'mfussenegger/nvim-dap'},
          {'nvim-neotest/nvim-nio'},
	  }
  }

  use { 'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {
      "someone-stole-my-name/yaml-companion.nvim",
      requires = {
          { "neovim/nvim-lspconfig" },
          { "nvim-lua/plenary.nvim" },
          { "nvim-telescope/telescope.nvim" },
      },
      config = function()
        require("telescope").load_extension("yaml_schema")
      end,
  }

  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
      "kristijanhusak/vim-dadbod-ui",
      requires = {
          { "tpope/vim-dadbod" },
          { "kristijanhusak/vim-dadbod-completion" },
      }
  }

end)
