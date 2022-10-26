local status_ok, searchbox = pcall(require, "searchbox")
if not status_ok then
  return
end

local nui_status, nui = pcall(require, "nui")
if not nui_status then
  return
end

searchbox.setup {}
nui.setup {}
