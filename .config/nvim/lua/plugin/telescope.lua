local telescope_status_ok, telescope = pcall(require, "telescope")
local actions_status_ok, actions = pcall(require, "telescope.actions")

if not telescope_status_ok then
  vim.notify("telescope not found")
  return
end

if not actions_status_ok then
  vim.notify("telescope action not found")
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
