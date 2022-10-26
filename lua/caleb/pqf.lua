local status_ok, pqf = pcall(require, "pqf")
if not status_ok then
  vim.notify("pqf.lua failed to load", "error")
  return
end

pqf.setup()
