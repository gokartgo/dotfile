local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

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

-- Clear search text
keymap("n", "<leader><leader>", ":let @/ = \"\"<CR>", opts)

-- Join line without move cursor
keymap("n", "J", "mzJ`z", opts)

-- switch tab
keymap("n", "<C-[>", ":tabprevious<CR>", opts)
keymap("n", "<C-]>", ":tabnext<CR>", opts)

-- Visual
-- Move text up and down and auto adjust indent
keymap("v", "<S-k>", ":move-2<CR>gv=gv", opts)
keymap("v", "<S-j>", ":move'>+<CR>gv=gv", opts)

-- Tab multiple line
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Replace Without Copy Deleted Word
keymap("v", "p", '"_dP', opts)

-- Search selected text
keymap("v", "<leader>f", "y/<C-r>\"<CR>", opts)

keymap("v", "<leader>ra", function()
  local text = vim.fn.input("Replace Text: ")
  vim.cmd('noautocmd normal! y')              -- yank select value
  local yank_value = vim.fn.getreg('"')       -- get current yank value
  vim.cmd('%s/' .. yank_value .. '/' .. text) -- replace select value with text input
end, opts)

-- change camel case to snake case
keymap("v", "<leader>cs", ":s/\\<\\u\\+\\|\\l\\u/\\= join(split(tolower(submatch(0)), '\\zs'), '_')/g<CR>", opts)
