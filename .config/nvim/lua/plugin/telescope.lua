local telescope_status_ok, telescope = pcall(require, "telescope")
local actions_status_ok, actions = pcall(require, "telescope.actions")
local builtin_status_ok, builtin = pcall(require, 'telescope.builtin')

if not telescope_status_ok then
  vim.notify("telescope not found")
  return
end

if not actions_status_ok then
  vim.notify("telescope action not found")
  return
end

if not builtin_status_ok then
  vim.notify("telescope builtin not found")
  return
end


telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = actions.cycle_history_prev,
        ["<C-l>"] = actions.cycle_history_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-t>"] = actions.select_tab,
        ["<C-o>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        ["<C-h>"] = actions.cycle_history_prev,
        ["<C-l>"] = actions.cycle_history_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-t>"] = actions.select_tab,
        ["<C-o>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  }
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
  local text = vim.fn.input({ prompt = "Find Text: " })

  if text ~= nil and text ~= '' then
    builtin.grep_string({ search = text })
  end
end)
vim.keymap.set('v', '<leader>fs', function()
  local text = vim.g.get_visual_selection()
  builtin.grep_string({ search = text })
end)
