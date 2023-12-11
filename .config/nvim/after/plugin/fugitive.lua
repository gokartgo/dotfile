if vim.fn.exists(':Git') == 0 then
  vim.notify("fugitive not found")
  return
end

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
