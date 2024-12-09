local nvim_tree_status_ok, nvim_tree = pcall(require, "nvim-tree")
local api_status_ok, api = pcall(require, "nvim-tree.api")

if not nvim_tree_status_ok then
  vim.notify("nvim-tree not found")
  return
end

if not api_status_ok then
  vim.notify("nvim-tree.api not found")
  return
end

local function custom_on_attach(bufnr)
  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- use all default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- remove a default
  vim.keymap.del('n', '<C-k>', { buffer = bufnr }) -- remove show file info
  vim.keymap.del('n', '<C-]>', { buffer = bufnr }) -- remove change directory

  -- override default mappings
  vim.keymap.set('n', '<C-i>', api.node.show_info_popup, opts('Info')) -- show file info
  vim.keymap.set('n', '>', api.tree.change_root_to_node, opts('CD'))   -- change directory
  vim.keymap.set('n', '<', api.tree.change_root_to_parent, opts('Up')) -- change directory
end

-- OR setup with some options
nvim_tree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  on_attach = custom_on_attach,
  renderer = {
    group_empty = true,
    icons = {
      web_devicons = {
        file = {
          enable = true,
          color = true,
        },
        folder = {
          enable = false,
          color = true,
        },
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        folder = {
          arrow_closed = "▶",
          arrow_open = "▼",
        },
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    show_on_open_dirs = true,
    debounce_delay = 50,
    severity = {
      min = vim.diagnostic.severity.HINT,
      max = vim.diagnostic.severity.ERROR,
    },
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    enable = true,
    git_ignored = false,
    custom = { "^\\.git$" }
  }
})

-- Toggle Explore from NvimTree Plugin
vim.keymap.set("n", "<leader>e", api.tree.toggle)
