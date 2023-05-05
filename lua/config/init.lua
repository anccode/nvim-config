-- Install your plugins here
return {
	{ "folke/lazy.nvim" }, -- Have packer manage itself
	{ "nvim-lua/plenary.nvim" }, -- Useful lua functions used by lots of plugins
	{ "windwp/nvim-autopairs" }, -- Autopairs, integrates with both cmp and treesitter
	{ "numToStr/Comment.nvim" },
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{ "kyazdani42/nvim-web-devicons" },
	{ "kyazdani42/nvim-tree.lua" },
	{ "akinsho/bufferline.nvim" },
	{ "moll/vim-bbye" },
	{ "nvim-lualine/lualine.nvim" },
	{ "akinsho/toggleterm.nvim" },
	{ "ahmedkhalf/project.nvim" },
	{ "lewis6991/impatient.nvim" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "goolord/alpha-nvim" },
	{ "folke/which-key.nvim" }, -- Colorschemes
	{ "folke/tokyonight.nvim" },
	{ "lunarvim/darkplus.nvim" }, -- Cmp
	{ "hrsh7th/nvim-cmp" }, -- The completion plugin
	{ "hrsh7th/cmp-buffer" }, -- buffer completions
	{ "hrsh7th/cmp-path" }, -- path completions
	{ "saadparwaiz1/cmp_luasnip" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" }, -- Snippets
	{ "L3MON4D3/LuaSnip" }, -- snippet engine
	{ "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use
	-- LSP
	{ "williamboman/nvim-lsp-installer" },
	{ "neovim/nvim-lspconfig" }, -- enable LSP
	{ "williamboman/mason.nvim" }, -- simple to use language server installer
	{ "williamboman/mason-lspconfig.nvim" }, -- simple to use language server installer
	{ "williamboman/nvim-lsp-installer" }, -- simple to use language server installer
	{ "jose-elias-alvarez/null-ls.nvim" }, -- for formatters and linters
	{ "tamago324/nlsp-settings.nvim" }, -- language server settings defined in json for
	-- for formatters and linters
	{ "RRethy/vim-illuminate" }, -- Telescope
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-telescope/telescope-live-grep-args.nvim" },
	{ "nvim-telescope/telescope-media-files.nvim" }, -- Treesitter
	{ "nvim-treesitter/nvim-treesitter" }, -- Git
	{ "lewis6991/gitsigns.nvim" }, -- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins

	--tabnine
	{
		"tzachar/cmp-tabnine",
		build = "./install.sh",
		dependencies = "hrsh7th/nvim-cmp",
	},
	--better comments
	{ "Djancyp/better-comments.nvim" },
	-- client databases
	{ "kristijanhusak/vim-dadbod-ui", requires = {
		"tpope/vim-dadbod",
		"tpope/vim-dotenv",
	} },
	--rest client
	{
		"rest-nvim/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	},
	-- colors
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				tailwind = true,
			},
		},
	},
  {"/jupyter-vim/jupyter-vim"},
	--[[ --chat gpt ]]
	--[[ { ]]
	--[[ 	"jackMort/ChatGPT.nvim", ]]
	--[[ 	event = "VeryLazy", ]]
	--[[ 	config = function() ]]
	--[[ 		require("config.angel.plugins.chatgpt") ]]
	--[[ 	end, ]]
	--[[ 	dependencies = { ]]
	--[[ 		"MunifTanjim/nui.nvim", ]]
	--[[ 		"nvim-lua/plenary.nvim", ]]
	--[[ 		"nvim-telescope/telescope.nvim", ]]
	--[[ 	}, ]]
	--[[ }, ]]
}
