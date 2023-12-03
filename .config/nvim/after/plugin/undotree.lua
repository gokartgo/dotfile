if vim.fn.exists(':UndotreeToggle') == 0 then
  vim.notify("undotree not found")
  return
end

vim.opt.swapfile = false -- disable default vim backup because we use from undotree plugin
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
