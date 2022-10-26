local status_ok, nvim_surround = pcall(require, "nvim-surround")
if not status_ok then
  vim.notify("nvim-surround.lua failed to load", "error")
  return
end

nvim_surround.setup {}
