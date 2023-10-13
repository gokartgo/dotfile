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

vim.cmd [[set iskeyword+=-]]                      -- when use delete word (dw) it will include with - to be in word

