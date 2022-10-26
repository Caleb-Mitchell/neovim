local status_ok, _ = pcall(require, "alternate-toggler")
if not status_ok then
  vim.notify("alternate-toggler.lua failed to load", "error")
	return
end
