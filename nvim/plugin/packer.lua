local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

return require("packer").startup(function(use)
	-- Package manager
	use("wbthomason/packer.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	-- Rust
	use({
		"saecki/crates.nvim",
		tag = "v0.3.0",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup()
		end,
	})
	use("simrat39/rust-tools.nvim")

	-- Fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Theme
	use({
		"folke/tokyonight.nvim", -- config = function()
		config = function()
			require("tokyonight").setup({
				style = "night",
			})

			-- Enable theme
			vim.cmd("colorscheme tokyonight")

			-- Set background and other elements transparent
			vim.cmd([[
                highlight NormalNC ctermbg=none guibg=none
                highlight Normal guibg=none
                highlight NonText ctermbg=none guibg=none
	            highlight signcolumn guibg=none
            ]])
		end,
	})

	-- Utilities
	use({
		"christoomey/vim-tmux-navigator",
	})
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup({})
		end,
	})
	use({
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup({ window = { blend = 0 } })
		end,
	})
	use("yamatsum/nvim-cursorline")
	use("jose-elias-alvarez/null-ls.nvim")
	use({
		"f-person/git-blame.nvim",
		config = function()
			require("gitblame")
			vim.g.gitblame_enabled = 1
		end,
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			-- Custom theme to remove background color
			local custom_theme = require("lualine.themes.tokyonight")
			custom_theme.normal.c.bg = nil

			require("lualine").setup({
				options = {
					theme = custom_theme,
				},
			})
		end,
	})
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	})
	use("petertriho/nvim-scrollbar")
	-- Other
	use("aiken-lang/editor-integration-nvim")
end)
