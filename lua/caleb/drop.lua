local status_ok, drop = pcall(require, "drop")
if not status_ok then
  vim.notify("drop.lua failed to load", "error")
  return
end

drop.setup {
  -- @type DropTheme|string
  -- currently, two themes available: "leaves" & "snow"
  theme = "snow", -- can be one of the default themes, or a custom theme
  max = 40, -- maximum number of drops on the screen
  interval = 150, -- every 150ms we update the drops
  screensaver = 1000 * 60 * 5, -- show after 5 minutes. Set to false, to disable
  filetypes = { "dashboard", "alpha", "starter" }, -- will enable/disable automatically for the following filetypes
}
