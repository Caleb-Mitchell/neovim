local status_ok, fidget = pcall(require, "fidget")
if not status_ok then
  vim.notify("fidget.lua failed to load", "error")
  return
end

fidget.setup {}
