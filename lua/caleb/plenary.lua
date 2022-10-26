local status_ok, _ = pcall(require, "plenary")
if not status_ok then
  vim.notify("plenary.lua failed to load", "error")
  return
end
