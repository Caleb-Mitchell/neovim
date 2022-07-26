local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "caleb.mason.configs"
require("caleb.mason.handlers").setup()
require "caleb.mason.null-ls"
