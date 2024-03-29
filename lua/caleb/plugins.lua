local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  -- max_jobs = 1, -- in case of bad internet connection
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use("wbthomason/packer.nvim")    -- Have packer manage itself
  use("nvim-lua/plenary.nvim")     -- Useful lua functions used in lots of plugins
  use("nvim-lualine/lualine.nvim") -- Nice statusline wrtten in lua
  use("ahmedkhalf/project.nvim")   -- Allow fuzzyfind search by project

  -- Neo-tree
  -- Unless you are still migrating, remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- UI
  use("goolord/alpha-nvim")                                                -- Nice splashscreen for nvim
  use("folke/which-key.nvim")                                              -- Hotkey menu on leader key press
  use("kyazdani42/nvim-web-devicons")                                      -- Provide icons needed for nvim-tree

  use("akinsho/toggleterm.nvim")                                           -- Toggleable terminal
  use("akinsho/bufferline.nvim")                                           -- Tab-like buffer display
  use({ "VonHeikemen/searchbox.nvim", requires = "MunifTanjim/nui.nvim" }) -- Provide a pop up search/replace box
  use("https://gitlab.com/yorickpeterse/nvim-pqf.git")                     -- Pretty Quickfix Menu
  use("gorbit99/codewindow.nvim")                                          -- MiniMap

  -- Formatting
  use("mcauley-penney/tidy.nvim")   -- Remove trailing ws and empty end lines
  use("windwp/nvim-autopairs")      -- Autopairs, integrates with both cmp and treesitter
  use("kylechui/nvim-surround")     -- Easily surround things
  use("numToStr/Comment.nvim")      -- Easily comment stuff
  use("rmagatti/alternate-toggler") -- Easily toggle booleans with 'ta'

  -- Markdown Preview
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" }) -- Preview markdown in browser
  use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }

  -- Eye Candy
  use("nvim-lua/popup.nvim")                                              -- An implementation of the Popup API from vim in Neovim
  use("rcarriga/nvim-notify")                                             -- Pretty popup windows for messages/notifications
  use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }) -- Highlight todos, and provide command to search all todos
  use {
    "j-hui/fidget.nvim",                                                  -- Small loading icon for language server loading
    tag = 'legacy'
  }
  use("lukas-reineke/indent-blankline.nvim") -- Add visual for line column indentation
  use("karb94/neoscroll.nvim")               -- Smooth scrolling

  -- Code Runner
  use({ 'CRAG666/code_runner.nvim' })
  use({ "mzarnitsa/psql" }) -- provide for psql code runner, under hotkey <leader> -

  -- Vim Plugins (not written in lua)
  use("moll/vim-bbye")                      -- preserve splits when closing buffers
  use("arithran/vim-delete-hidden-buffers") -- allow closing all but current buffer
  use("steven-liou/console-puts")           -- provides command: cp which adds console.log / puts to line

  -- Colors
  use("ellisonleao/gruvbox.nvim")
  use("luisiacc/gruvbox-baby")

  use("folke/lsp-colors.nvim")       -- Adds color support for lsp highlighting if needed
  use("norcalli/nvim-colorizer.lua") -- Preview colors in-file

  -- cmp plugins
  use("hrsh7th/nvim-cmp")         -- The completion plugin
  use("hrsh7th/cmp-buffer")       -- buffer completions
  use("hrsh7th/cmp-path")         -- path completions
  use("hrsh7th/cmp-cmdline")      -- cmdline completions
  use("saadparwaiz1/cmp_luasnip") -- snippet completions
  use("f3fora/cmp-spell")         -- vim spellsuggest completion
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")
  use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }) -- Provide AI powered completion

  -- copilot
  -- use("github/copilot.vim")
  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-f>",
            dismiss = "<ESC>",
            next = "<C-l>",
            prev = "<C-h>",
          }
        }
        -- the following lines are for to make sure copilot_cmp works properly
        -- suggestion = { enabled = false },
        -- panel = { enabled = false },
      })
    end,
  }
  -- use {
  --   "zbirenbaum/copilot-cmp",
  --   after = { "copilot.lua" },
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end
  -- }

  -- snippets
  use({
    'L3MON4D3/LuaSnip',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load() -- autoload my custom snippets that are vscode-like
    end,
  })
  use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

  -- LSP
  use("neovim/nvim-lspconfig")           -- enable LSP
  use({ "williamboman/mason.nvim" })     -- Lsp/DAP/Linter/Formatter installer
  use({ "williamboman/mason-lspconfig.nvim" })
  use("tamago324/nlsp-settings.nvim")    -- language server settings defined in json for
  use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

  -- Telescope
  use("nvim-telescope/telescope.nvim") -- Fuzzyfind searching

  -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("nvim-treesitter/nvim-treesitter-context") -- Pins current scope to top of buffer
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("HiPhish/rainbow-delimiters.nvim")
  -- use("nvim-treesitter/playground") -- allow treesitter playground functionality

  -- Vimwiki
  use("vimwiki/vimwiki")         -- Enables a zettlekasten-like nested wiki in vim
  use("michal-h21/vimwiki-sync") -- Auto sync vimwiki to github

  -- Git
  use("lewis6991/gitsigns.nvim") -- Shows git changes per line in sign column

  -- Extra
  use("seandewar/nvimesweeper")     -- Play minesweeper
  use("seandewar/killersheep.nvim") -- Play killer sheep
  use("ellisonleao/weather.nvim")   -- Display weather in pop up

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
