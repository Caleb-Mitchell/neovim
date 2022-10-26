-- Run :GlowInstall in nvim to install locally

local status_ok, _ = pcall(require, "glow")
if not status_ok then
  vim.notify("glow.lua failed to load", "error")
  return
end
