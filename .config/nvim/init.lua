require("config.lazy")
require("lazy").setup({
	{"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = true, build = ":TSUpdate"}
})
