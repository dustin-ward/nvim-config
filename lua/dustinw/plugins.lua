-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Auto compile packer on update to plugins
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
	pattern = "plugins.lua",
	command = "source <afile> | PackerCompile",
})

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')
	use('nvim-tree/nvim-web-devicons')
	use('rebelot/kanagawa.nvim')
	use({
		"nvim-lualine/lualine.nvim",
		event = "BufEnter",
		config = function()
			require("dustinw.configs.lualine")
		end,
		requires = { "nvim-web-devicons" },
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = function()
			require("dustinw.configs.treesitter")
		end,
	})
	use("nvim-lua/plenary.nvim")
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("dustinw.configs.neotree")
		end,
	})
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("dustinw.configs.gitsigns")
		end,
	})
	use({
		"xiyaowong/nvim-transparent",
		config = function()
			require("dustinw.configs.transparent")
		end, 
	})
	use("tpope/vim-commentary")
	--use({
	--	"norcalli/nvim-colorizer.lua",
	--	config = function()
	--		require("colorizer").setup({ "*" })
	--	end,
	--})
	--use({
	--	"nvim-telescope/telescope.nvim",
	--	tag = "0.1.1",
	--	requires = { { "nvim-lua/plenary.nvim" } },
	--})

	-- LSP 	
	use("onsails/lspkind-nvim")
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v<CurrentMajor>.*",
	})
	use({
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = function()
			require("dustinw.configs.cmp")
		end,
	})
	use("hrsh7th/cmp-nvim-lsp")
	use({ "hrsh7th/cmp-path", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })
	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("dustinw.configs.lsp")
		end,
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("dustinw.configs.null-ls")
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Go
	use({
		'ray-x/go.nvim',
		config = function()
			require("dustinw.configs.go")
		end,
	})
	use('ray-x/guihua.lua')

end)
