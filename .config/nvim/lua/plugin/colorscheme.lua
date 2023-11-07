-- Theme
local colorscheme = "OceanicNext"
local colorscheme_status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not colorscheme_status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found")
  return
end
