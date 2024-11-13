return {
	{
		"abecodes/tabout.nvim",
		lazy = false,
		event = "InsertCharPre",
		priority = 1000,
		dependencies = {
			"hrsh7th/nvim-cmp",
			"nvim-treesitter/nvim-treesitter",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			require("tabout").setup()
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		keys = function()
			return {}
		end,
	},
}
