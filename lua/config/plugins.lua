local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end
-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use "windwp/nvim-autopairs" --nvim-autopairs
  use "numToStr/Comment.nvim" --comments
  use "akinsho/bufferline.nvim" -- for buffer
  use "moll/vim-bbye"
  use 'nvim-lualine/lualine.nvim'
  use "akinsho/toggleterm.nvim"
  use "ahmedkhalf/project.nvim"
  use 'lewis6991/impatient.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'goolord/alpha-nvim'
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "folke/which-key.nvim"
  --tabnine
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
  --better-comments
  use "Djancyp/better-comments.nvim"
  --cmp
  use "hrsh7th/nvim-cmp" --plugin de autocompletado
  use "hrsh7th/cmp-buffer" --buffer autocompletado
  use "hrsh7th/cmp-path" --path autocompletado
  use "hrsh7th/cmp-cmdline" --cmd autocompletado
  use "saadparwaiz1/cmp_luasnip" --snippet autocompletado
  use "David-Kunz/cmp-npm" -- cmp-npm
  use "hrsh7th/cmp-nvim-lsp"
  -- client databases
  use{ "kristijanhusak/vim-dadbod-ui",
    requires={
      "tpope/vim-dadbod",
      "tpope/vim-dotenv"
    }
  }
  -- vscode-es7-javascript-react-snippets
  use {'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile'
  }
  -- rest client
  -- install in your computer curl, jq , tiny
  use({
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  --lsp
  use "williamboman/nvim-lsp-installer"
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  --use {'neoclide/coc.nvim', branch = 'release'} --coc
  -- telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'
  --color scheme
  use { "folke/tokyonight.nvim", commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764" }
  -- prettier
  use {
    'prettier/vim-prettier',
    run = 'yarn install',
     ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' }
  }
  --snippets
  use "L3MON4D3/LuaSnip" --snippet  engine
  use "rafamadriz/friendly-snippets" --a bunch of snippet
  --treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  --git
  use "lewis6991/gitsigns.nvim"
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
