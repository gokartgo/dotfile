local telescope_status_ok, telescope = pcall(require, "telescope")
local actions_status_ok, actions = pcall(require, "telescope.actions")
local builtin_status_ok, builtin = pcall(require, 'telescope.builtin')

if not telescope_status_ok then
  vim.notify("telescope not found")
  return
end

if not actions_status_ok then
  vim.notify("telescope.actions not found")
  return
end

if not builtin_status_ok then
  vim.notify("telescope.builtin not found")
  return
end

telescope.setup {
  defaults = {
    initial_mode = "normal",
    path_display = { "smart" },
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
    },
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        height = 0.99,
        preview_cutoff = 1,
        preview_height = 0.6,
        prompt_position = "bottom",
        width = 0.99
      }
    },
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg", "svg" },
      -- find command (defaults to `fd`)
      find_cmd = "rg"
    }
  },
}

telescope.load_extension('media_files')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', function()
  local text = vim.fn.input({ prompt = "Find Text: " })

  if text ~= nil and text ~= '' then
    builtin.grep_string({ search = text })
  end
end)

vim.keymap.set('v', '<leader>fs', function()
  local text = vim.g.get_visual_selection()
  builtin.grep_string({ search = text, word_match = '-w' })
end)

vim.keymap.set('n', '<leader>fm', telescope.extensions.media_files.media_files, {})
