local status_ok, searchbox = pcall(require, "searchbox")
if not status_ok then
  vim.notify("searchbox.lua failed to load", "error")
  return
end

searchbox.setup {}
