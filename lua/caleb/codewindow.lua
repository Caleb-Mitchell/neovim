local status_ok, codewindow = pcall(require, "codewindow")
if not status_ok then
  vim.notify("codewindow.lua failed to load", "error")
	return
end

codewindow.setup({
	active_in_terminals = false, -- Should the minimap activate for terminal buffers
	auto_enable = false, -- Automatically open the minimap when entering a (non-excluded) buffer (accepts a table of filetypes)
	exclude_filetypes = { "NvimTree", "alpha", "packer" }, -- Choose certain filetypes to not show minimap on
})
