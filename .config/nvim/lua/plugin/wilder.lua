local wilder_status_ok, wilder = pcall(require, "wilder")

if not wilder_status_ok then
  vim.notify("wilder not found")
  return
end

-- Default keys
wilder.setup({
  modes = {':', '/', '?'},
  next_key = '<Tab>',
  previous_key = '<S-Tab>',
  accept_key = '<Down>',
  reject_key = '<Up>',
  case_sensitive = 0
})

-- 'highlighter' : applies highlighting to the candidates
wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    left = {
       ' ', wilder.popupmenu_devicons()
    },
    right = {
       ' ', wilder.popupmenu_scrollbar(),
    },
    highlights = {
       border = 'Normal',
    },
    border = 'rounded',
  })
))
