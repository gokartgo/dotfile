local Plug = vim.fn['plug#']

vim.call('plug#begin', vim.fn.stdpath('data') .. '/plugged')

Plug 'mhartington/oceanic-next' -- theme
Plug 'nvim-tree/nvim-web-devicons' -- optional, for file icons
Plug 'nvim-tree/nvim-tree.lua' -- file explorer
Plug 'windwp/nvim-autopairs' -- auto pairs ) } ]
Plug 'mbbill/undotree' -- track file change
Plug 'tpope/vim-fugitive' -- git handle
Plug('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'}) -- highlight syntax in code

-- telescope is a highly extendable fuzzy finder over lists
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.2' })

-- harpoon is use for navigate to file that you opened before
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'

-- auto complete in Ex commands
  function UpdateRemotePlugins(...)
    -- Needed to refresh runtime files
    vim.cmd('let &rtp=&rtp')
    -- Run :UpdateRemotePlugins
    vim.cmd('UpdateRemotePlugins')
  end
Plug('gelguy/wilder.nvim', { ['do'] = vim.fn['UpdateRemotePlugins'] })

vim.call('plug#end')

