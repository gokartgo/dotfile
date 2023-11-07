local mark_status_ok, mark = pcall(require, "harpoon.mark")
local ui_status_ok, ui = pcall(require, "harpoon.ui")

if not mark_status_ok then
  vim.notify("harpoon.mark not found")
  return
end

if not ui_status_ok then
  vim.notify("harpoon.ui not found")
  return
end

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-p>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
