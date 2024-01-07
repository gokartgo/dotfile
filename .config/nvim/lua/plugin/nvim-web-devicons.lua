local status_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")

if not status_ok then
  vim.notify("nvim-web-devicons not found")
  return
end
