dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/vim-plug.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/nvim-tree-conf.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/wilder.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/nvim-autopairs.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/nvim-treesitter.lua")

require "plugin.colorscheme"
require "user.options"
require "user.keymaps"

