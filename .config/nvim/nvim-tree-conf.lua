-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function custom_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- use all default mappings 
  api.config.mappings.default_on_attach(bufnr)

  -- override default mappings
  vim.keymap.set('n', '<C-i>', api.node.show_info_popup, opts('Info'))
end

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  on_attach = custom_on_attach,
  renderer = {
    group_empty = true,
  },
})

