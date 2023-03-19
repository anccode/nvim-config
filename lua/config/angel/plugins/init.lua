return {
	"nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
	"nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
	"kyazdani42/nvim-web-devicons",
	"kyazdani42/nvim-tree.lua",
	"windwp/nvim-autopairs", --nvim-autopairs
	"numToStr/Comment.nvim", --comments
	"akinsho/bufferline.nvim", -- for buffer
	"moll/vim-bbye",
	"nvim-lualine/lualine.nvim",
	"akinsho/toggleterm.nvim",
	"ahmedkhalf/project.nvim",
	"lewis6991/impatient.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"goolord/alpha-nvim",
	"antoinemadec/FixCursorHold.nvim", -- This is needed to fix lsp doc highlight
	"folke/which-key.nvim",
	--tabnine
	{ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" },
	{ "codota/tabnine-nvim", run = "./dl_binaries.sh" },
	--better-comments
	"Djancyp/better-comments.nvim",
	--cmp
	"hrsh7th/nvim-cmp", --plugin de autocompletado
	"hrsh7th/cmp-buffer", --buffer autocompletado
	"hrsh7th/cmp-path", --path autocompletado
	"hrsh7th/cmp-cmdline", --cmd autocompletado
	"saadparwaiz1/cmp_luasnip", --snippet autocompletado
	"David-Kunz/cmp-npm", -- cmp-npm
	"hrsh7th/cmp-nvim-lsp",
	-- client databases
	{ "kristijanhusak/vim-dadbod-ui", requires = {
		"tpope/vim-dadbod",
		"tpope/vim-dotenv",
	} },
	-- vscode-es7-javascript-react-snippets
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
	},
	-- rest client
	-- install in your computer curl, jq , tiny
	{
		"rest-nvim/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	},
	--lsp
	"williamboman/nvim-lsp-installer",
	"neovim/nvim-lspconfig", -- enable LSP
	"williamboman/mason.nvim", -- simple to use language server installer
	"williamboman/mason-lspconfig.nvim", -- simple to use language server installer
	"williamboman/nvim-lsp-installer", -- simple to use language server installer
	"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
	"tamago324/nlsp-settings.nvim", -- language server settings defined in json for
	--use {'neoclide/coc.nvim', branch = 'release'} --coc
	-- telescope
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-media-files.nvim",
	--color scheme
	{ "folke/tokyonight.nvim", commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764" },
	--snippets
	"L3MON4D3/LuaSnip", --snippet  engine
	"rafamadriz/friendly-snippets", --a bunch of snippet
	--treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},
	"p00f/nvim-ts-rainbow",
	"nvim-treesitter/playground",
	"JoosepAlviste/nvim-ts-context-commentstring",
	--git
	"lewis6991/gitsigns.nvim",
	{
		"Nvchad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				tailwind = true,
			},
		},
	},
}
