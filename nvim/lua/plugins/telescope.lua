return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		local builtin = require("telescope.builtin")
		local map = vim.keymap.set

		map("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
		map("n", "<leader>fg", builtin.live_grep, { desc = "Find Grep" })
		map("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
		map("n", "<leader>fh", builtin.help_tags, { desc = "Find Help Tags" })
		map("n", "<leader>fc", builtin.colorscheme, { desc = "Find Colorscheme" })
		map("n", "<leader>fd", builtin.diagnostics, { desc = "Find Diagnostics" })
	end,
}
