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
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/plenary.nvim") -- Useful lua functions used in lots of plugins
	use("nvim-lualine/lualine.nvim") -- Nice statusline wrtten in lua
	use("ahmedkhalf/project.nvim") -- Allow fuzzyfind search by project
	use("lewis6991/impatient.nvim") -- Startup nvim faster
	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
				-- optional configuration
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	-- UI
	use("goolord/alpha-nvim") -- Nice splashscreen for nvim
	use("folke/which-key.nvim") -- Hotkey menu on leader key press
	use("kyazdani42/nvim-web-devicons") -- Provide icons needed for nvim-tree
	use("kyazdani42/nvim-tree.lua") -- File Explorer
	use("akinsho/toggleterm.nvim") -- Toggleable terminal
	use("akinsho/bufferline.nvim") -- Tab-like buffer display
	use({ "VonHeikemen/searchbox.nvim", requires = "MunifTanjim/nui.nvim" }) -- Provide a pop up search/replace box
	use("https://gitlab.com/yorickpeterse/nvim-pqf.git") -- Pretty Quickfix Menu
	use("gorbit99/codewindow.nvim") -- MiniMap

	-- Formatting
	use("mcauley-penney/tidy.nvim") -- Remove trailing ws and empty end lines
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("kylechui/nvim-surround") -- Easily surround things
	use("numToStr/Comment.nvim") -- Easily comment stuff
	use("rmagatti/alternate-toggler") -- Easily toggle booleans with 'ta'

	-- Markdown Preview
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" }) -- Preview markdown in browser
	use({ "ellisonleao/glow.nvim", branch = "main" }) -- Preview markdown in vim window

	-- Eye Candy
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("rcarriga/nvim-notify") -- Pretty popup windows for messages/notifications
	use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }) -- Highlight todos, and provide command to search all todos
	use("j-hui/fidget.nvim") -- Small loading icon for language server loading
	use("lukas-reineke/indent-blankline.nvim") -- Add visual for line column indentation
	use("karb94/neoscroll.nvim") -- Smooth scrolling

	-- Code Runner
	use({ "is0n/jaq-nvim" }) -- Run current code in quickfix menu
	use({ "mzarnitsa/psql" }) -- provide for psql code runner, under hotkey <leader> -

	-- Vim Plugins (not written in lua)
	use("moll/vim-bbye") -- preserve splits when closing buffers
	use("arithran/vim-delete-hidden-buffers") -- allow closing all but current buffer
	use("steven-liou/console-puts") -- provides command: cp which adds console.log / puts to line

	-- Colors
	use("ellisonleao/gruvbox.nvim")
	use("luisiacc/gruvbox-baby")

	use("folke/lsp-colors.nvim") -- Adds color support for lsp highlighting if needed
	use("antoinemadec/FixCursorHold.nvim") -- This is needed to fix lsp doc highlight TODO: may no longer be needed
	use("norcalli/nvim-colorizer.lua") -- Preview colors in-file

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("f3fora/cmp-spell") -- vim spellsuggest completion
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }) -- Provide AI powered completion

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use({ "williamboman/mason.nvim" }) -- Lsp/DAP/Linter/Formatter installer
	use({ "williamboman/mason-lspconfig.nvim" })
	use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

	-- Telescope
	use("nvim-telescope/telescope.nvim") -- Fuzzyfind searching

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-context") -- Pins current scope to top of buffer
	use("p00f/nvim-ts-rainbow") -- enable rainbow parentheses
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("nvim-treesitter/playground") -- allow treesitter playground functionality

	-- Vimwiki
	use("vimwiki/vimwiki") -- Enables a zettlekasten-like nested wiki in vim
	use("michal-h21/vimwiki-sync") -- Auto sync vimwiki to github

	-- Git
	use("lewis6991/gitsigns.nvim") -- Shows git changes per line in sign column

	-- Extra
	use("seandewar/nvimesweeper") -- Play minesweeper
	use("seandewar/killersheep.nvim") -- Play killer sheep
	use("ellisonleao/weather.nvim") -- Display weather in pop up

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
