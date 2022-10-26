local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  vim.notify("colorizer.lua failed to load", "error")
  return
end

colorizer.setup {}
