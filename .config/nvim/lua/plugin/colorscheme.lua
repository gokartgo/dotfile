vim.cmd([[
  if (has("termguicolors"))
   set termguicolors
  endif

  syntax enable
]])

-- Theme
local colorscheme = "OceanicNext"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found")
  return
end
