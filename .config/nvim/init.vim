call plug#begin(stdpath('data') . '/plugged')

Plug 'mhartington/oceanic-next'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

" auto complete in Ex commands
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction
Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }

call plug#end()

set termguicolors
colorscheme OceanicNext

source ~/.dotfiles/.config/nvim/coc.vim
source ~/.dotfiles/.config/nvim/nvim-tree-conf.vim
source ~/.dotfiles/.config/nvim/wilder.vim

" set line number
set number

" set copy to clipboard
set clipboard+=unnamedplus

