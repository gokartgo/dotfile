local Plug = vim.fn['plug#']
local vim_plug_status_ok, _ = pcall(vim.call, 'plug#begin', vim.fn.stdpath('data') .. '/plugged')

if not vim_plug_status_ok then
  vim.notify("Vim Plug not found")
  return
end

Plug 'ellisonleao/gruvbox.nvim'                       -- theme
Plug 'nvim-tree/nvim-web-devicons'                    -- optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'                        -- file explorer
Plug 'windwp/nvim-autopairs'                          -- auto pairs ) } ]
Plug 'mbbill/undotree'                                -- track file change
Plug 'numToStr/Comment.nvim'                          -- comment helper
Plug('mg979/vim-visual-multi', { branch = 'master' }) -- multi cursor

-- git
Plug 'tpope/vim-fugitive'      -- git handle
Plug 'lewis6991/gitsigns.nvim' -- git sign

-- nvim-treesitter
Plug('nvim-treesitter/nvim-treesitter', { tag = 'v0.9.1' }) -- highlight syntax in code
Plug 'HiPhish/rainbow-delimiters.nvim'                      -- rainbow parentheses
Plug 'JoosepAlviste/nvim-ts-context-commentstring'          -- comment advanced
Plug 'windwp/nvim-ts-autotag'                               -- auto close html tag

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim' -- extension for telescope, harpoon, neotest

-- neotest
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-neotest/nvim-nio'
Plug('nvim-neotest/neotest', { tag = 'v5.2.1' })
Plug('nvim-neotest/neotest-jest', { commit = 'c211844' }) -- plugin for jest
Plug 'marilari88/neotest-vitest'                          -- plugin for vitest

-- telescope is a highly extendable fuzzy finder over lists
Plug('nvim-telescope/telescope.nvim')
Plug 'nvim-telescope/telescope-media-files.nvim'

-- harpoon is use for navigate to file that you opened before
Plug 'ThePrimeagen/harpoon'

-- status line
Plug 'nvim-lualine/lualine.nvim'

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

vim.call('plug#end')
