local status_ok, _ = pcall(require, "popup")
if not status_ok then
  vim.notify("popup.lua failed to load", "error")
  return
end
