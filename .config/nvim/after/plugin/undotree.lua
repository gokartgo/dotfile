vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.opt.swapfile = false                          -- disable default vim backup because we use from undotree plugin
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
