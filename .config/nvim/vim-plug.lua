local Plug = vim.fn['plug#']

vim.call('plug#begin', vim.fn.stdpath('data') .. '/plugged')

Plug 'mhartington/oceanic-next' -- theme
Plug('neoclide/coc.nvim', { branch = 'release' })
Plug 'nvim-tree/nvim-web-devicons' -- optional, for file icons
Plug 'nvim-tree/nvim-tree.lua' -- file explorer
Plug 'windwp/nvim-autopairs' -- auto pairs ) } ]

-- telescope is a highly extendable fuzzy finder over lists
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.2' })

-- auto complete in Ex commands
  function UpdateRemotePlugins(...)
    -- Needed to refresh runtime files
    vim.cmd('let &rtp=&rtp')
    -- Run :UpdateRemotePlugins
    vim.cmd('UpdateRemotePlugins')
  end
Plug('gelguy/wilder.nvim', { ['do'] = vim.fn['UpdateRemotePlugins'] })

vim.call('plug#end')

