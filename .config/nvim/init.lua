dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/vim-plug.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/nvim-tree-conf.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/wilder.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/nvim-autopairs.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/oceanic-next.lua")

require "user.options"
require "user.keymaps"

