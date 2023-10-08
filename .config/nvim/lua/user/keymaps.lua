local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap Space as Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal
-- Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Split Window
keymap("n", "<leader>h", "<C-w>v", opts) -- Split window horizontal
keymap("n", "<leader>v", "<C-w>s", opts) -- Split window vertical
keymap("n", "<leader>q", "<C-w>q", opts) -- Quit current window

-- Toggle Explore from NvimTree Plugin
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Resize Screen With arrow
keymap("n", "<S-Up>", ":resize -2<CR>", opts)
keymap("n", "<S-Down>", ":resize +2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- Navigate Buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

-- Move text up and down and auto adjust indent
keymap("v", "<S-k>", ":move-2<CR>gv=gv", opts)
keymap("v", "<S-j>", ":move'>+<CR>gv=gv", opts)

-- Replace Without Copy Deleted Word
keymap("v", "p", '"_dP', opts)

-- Join line without move cursor
keymap("n", "J", "mzJ`z", opts)

-- Search selected text
keymap("v", "<leader>f", "y/<C-r>\"<CR>", opts)

-- Replace all selected text
keymap("v", "<leader>ra", "y:%s/<C-r>\"/", opts)

-- Clear search text
keymap("n", "<leader><leader>", ":let @/ = \"\"<CR>", opts)

