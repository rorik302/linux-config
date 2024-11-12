return {
	"kdheepak/lazygit.nvim",
	lazy = true,
	cmd = {
		"LazyGit",
		"LazyGitCurrentFile",
		"LazyGitConfig",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>gl", ":LazyGit<CR>", { desc = "LazyGit" } },
	},
	config = function()
		require("telescope").load_extension("lazygit")
	end,
}
