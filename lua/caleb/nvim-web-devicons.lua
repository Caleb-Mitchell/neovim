local status_ok, _ = pcall(require, "nvim-web-devicons")
if not status_ok then
  vim.notify("nvim-web-devicons.lua failed to load", "error")
  return
end
