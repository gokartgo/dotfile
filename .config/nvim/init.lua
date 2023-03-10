dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/vim-plug.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/coc.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/nvim-tree-conf.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/wilder.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/ctrlpvim.lua")
dofile(os.getenv("HOME") .. "/.dotfiles/.config/nvim/nvim-autopairs.lua")

vim.opt.termguicolors = true
vim.cmd('colorscheme OceanicNext')

-- set line number
vim.opt.number = true
-- set copy to clipboard
vim.opt.clipboard = 'unnamedplus'
-- set ignore case
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- set tab indent = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

