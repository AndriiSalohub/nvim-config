return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"folke/todo-comments.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",

				build = "make",

				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },

			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
						},
						n = {
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Search Help" })
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Search Keymaps" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search Files" })
			vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "Search Select Telescope" })
			vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Search by Grep" })
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Search Diagnostics" })
			vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = 'Search Recent Files ("." for repeat)' })
			vim.keymap.set(
				"n",
				"<leader>f/",
				builtin.current_buffer_fuzzy_find,
				{ desc = "Fuzzily search in current buffer" }
			)
			vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
		end,
	},
}
