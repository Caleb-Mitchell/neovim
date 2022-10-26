local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
  vim.notify("impatient.lua failed to load", "error")
  return
end

impatient.enable_profile()
