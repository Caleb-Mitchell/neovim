local status_ok, code_runner = pcall(require, "code_runner")
if not status_ok then
  vim.notify("code_runner.lua failed to load", "error")
  return
end

code_runner.setup {
  mode = "toggleterm",
  focus = false,
  close_key = "<esc>",
  -- put here the commands by filetype
  filetype = {
    java = {
      "cd $dir &&",
      "javac $fileName &&",
      "java $fileNameWithoutExt"
    },
    python = "python3 -u",
    ruby = "ruby",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt"
    },
  },
}
