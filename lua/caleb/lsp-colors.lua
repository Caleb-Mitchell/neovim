local status_ok, _ = pcall(require, "lsp-colors")
if not status_ok then
  vim.notify("lsp-colors.lua failed to load", "error")
  return
end
