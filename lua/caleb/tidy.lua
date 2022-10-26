local status_ok, tidy = pcall(require, "tidy")
if not status_ok then
  vim.notify("tidy.lua failed to load", "error")
  return
end

tidy.setup {}
