local status_ok, mason = pcall(require, "mason")
if not status_ok then
  vim.notify("Mason couldn't load")
  return
end

local lspconfig = require("lspconfig")

local servers = { "bashls",
  "jsonls",
  "lua_ls",
  "solargraph",
  "html",
  "tsserver",
  "marksman",
  "gopls",
  "pylsp",
  "elixirls",
  "eslint",
  "prismals",
  "tailwindcss",
  "astro"
}


mason.setup {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
}

require("mason-lspconfig").setup {
  ensure_installed = servers
}

for _, server in pairs(servers) do
  local opts = {
    on_attach = require("caleb.mason.handlers").on_attach,
    capabilities = require("caleb.mason.handlers").capabilities,
  }
  local has_custom_opts, server_custom_opts = pcall(require, "caleb.mason.settings." .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
  end
  lspconfig[server].setup(opts)
end
