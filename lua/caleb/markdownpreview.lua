local status_ok, markdownpreview = pcall(require, "markdownpreview")
if not status_ok then
  return
end

markdownpreview.setup {
-- set to 1, nvim will open the preview window after entering the markdown buffer
-- default: 0
  mkdp_auto_start = 0,
}

-- Must run `:call mkdp#util#install()` to install locally
