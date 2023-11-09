local builtin_status_ok, builtin = pcall(require, 'telescope.builtin')

if not builtin_status_ok then
  vim.notify("telescope.builtin not found")
  return
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader><S-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input("grep string > ") })
end)
