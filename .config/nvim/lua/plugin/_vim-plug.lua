local Plug = vim.fn['plug#']
local vim_plug_status_ok, _ = pcall(vim.call, 'plug#begin', vim.fn.stdpath('data') .. '/plugged')

if not vim_plug_status_ok then
  vim.notify("Vim Plug not found")
  return
end

Plug 'mhartington/oceanic-next'    -- theme
Plug 'nvim-tree/nvim-web-devicons' -- optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'     -- file explorer
Plug 'windwp/nvim-autopairs'       -- auto pairs ) } ]
Plug 'mbbill/undotree'             -- track file change
Plug 'numToStr/Comment.nvim'       -- comment helper

-- git
Plug 'tpope/vim-fugitive'      -- git handle
Plug 'lewis6991/gitsigns.nvim' -- git sign

-- nvim-treesitter
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' }) -- highlight syntax in code
Plug 'HiPhish/rainbow-delimiters.nvim'                            -- rainbow parentheses
Plug 'JoosepAlviste/nvim-ts-context-commentstring'                -- comment advanced
Plug 'windwp/nvim-ts-autotag'                                     -- auto close html tag

Plug 'nvim-lua/plenary.nvim'                                      -- extension for telescope, harpoon
-- telescope is a highly extendable fuzzy finder over lists
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.4' })

-- harpoon is use for navigate to file that you opened before
Plug 'ThePrimeagen/harpoon'

-- nvim cmp plugins
Plug 'hrsh7th/nvim-cmp'     -- the completions plugins
Plug 'hrsh7th/cmp-buffer'   -- buffer completions
Plug 'hrsh7th/cmp-path'     -- path completions
Plug 'hrsh7th/cmp-cmdline'  -- cmdline completions
Plug 'hrsh7th/cmp-nvim-lua' -- cmp nvim lua api

-- snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug "rafamadriz/friendly-snippets" -- snippets plugin to support many language

-- lsp
Plug 'hrsh7th/cmp-nvim-lsp'              -- use with nvim cmp plugins
Plug 'neovim/nvim-lspconfig'             -- enable LSP
Plug 'williamboman/mason.nvim'           -- simple to use language server installer
Plug 'williamboman/mason-lspconfig.nvim' -- simple to use language server installer
Plug 'jose-elias-alvarez/null-ls.nvim'   -- LSP diagnostics and code actions

vim.call('plug#end')
