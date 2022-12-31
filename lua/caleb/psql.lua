local status_ok, psql = pcall(require, "psql")
if not status_ok then
  vim.notify("psql.lua failed to load", "error")
  return
end

psql.setup {
  database_name       = 'caleb',
  execute_line        = '<leader>-e',
  execute_selection   = '<leader>-e',
  execute_paragraph   = '<leader>-r',

  close_latest_result = '<leader>-w',
  close_all_results   = '<leader>-W',
}
