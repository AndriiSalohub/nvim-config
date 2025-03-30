return {
	{
		"nvim-tree/nvim-tree.lua",
		event = "VimEnter",
		config = function()
			require("nvim-tree").setup({
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				renderer = {
					indent_markers = {
						enable = true,
					},
					icons = {
						glyphs = {
							folder = {
								arrow_closed = "+",
								arrow_open = "-",
							},
						},
					},
				},
				filters = {
					dotfiles = true,
				},
			})

			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree", silent = true })
			vim.keymap.set("n", "<leader>c", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
			vim.keymap.set(
				"n",
				"<leader>ef",
				"<cmd>NvimTreeFindFileToggle<CR>",
				{ desc = "Toggle file explorer on current file" }
			)
		end,
	},
}
