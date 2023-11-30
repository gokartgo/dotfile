vim.opt.number = true                             -- set line number
vim.opt.clipboard = 'unnamedplus'                 -- set copy to clipboard

vim.opt.ignorecase = true                         -- set ignore case
vim.opt.smartcase = true

vim.opt.tabstop = 2                               -- set tab indent = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

vim.opt.hlsearch = true                           -- highlight all matches on previous search pattern
vim.opt.incsearch = true

vim.opt.statusline = 'col: %c %=file: %f '        -- set show column number in status line

vim.opt.updatetime = 300                          -- set for lsp highlight to make it faster

vim.cmd [[set iskeyword+=-]]                      -- when use delete word (dw) it will include with - to be in word


if vim.fn.has 'termguicolors' == 1 then
  vim.opt.termguicolors = true                    -- set termguicolors to enable highlight groups
  vim.opt.syntax = 'enable'
end

-- setup for nvim-tree-conf
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.wildmenu = false                          -- disable wildmenu because we use cmp-cmdline plugin to show suggestion in ex command mode
