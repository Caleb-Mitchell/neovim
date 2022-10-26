local status_ok, todo_comments = pcall(require, "todo-comments")
if not status_ok then
  vim.notify("todo-comments.lua failed to load", "error")
  return
end

todo_comments.setup {}
