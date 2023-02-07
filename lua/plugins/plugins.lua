vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- visual
  use 'folke/tokyonight.nvim'
  use 'terroo/vim-simple-emoji'
  use 'kyazdani42/nvim-web-devicons'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'norcalli/nvim-colorizer.lua'
  --
  use 'tpope/vim-surround'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
    } 
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             
      {'williamboman/mason.nvim'},           
      {'williamboman/mason-lspconfig.nvim'}, 

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         
      {'hrsh7th/cmp-nvim-lsp'},   
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/cmp-buffer'},       
      {'hrsh7th/cmp-path'},         
      {'saadparwaiz1/cmp_luasnip'}, 
      {'hrsh7th/cmp-nvim-lua'},     

      -- Snippets
      {'L3MON4D3/LuaSnip'},             
      {'rafamadriz/friendly-snippets'}, 
    }
  }
  -- Snippets
  use 'ray-x/lsp_signature.nvim'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'dcampos/nvim-snippy'
  use 'dcampos/cmp-snippy'                              
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'feline-nvim/feline.nvim'
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
  end}

  -- Tree-sitter
      use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
  -- Omnisharp
  use 'OmniSharp/omnisharp-vim'
  
  -- TABNINE
end)


