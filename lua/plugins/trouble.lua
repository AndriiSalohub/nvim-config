return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
	config = function()
		require("trouble").setup({})
	end,
	keys = {
		{ "<leader>xx", "<cmd>Trouble<CR>", desc = "Open/close trouble list" },
		{ "<leader>xd", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble document diagnostics" },
		{ "<leader>xq", "<cmd>Trouble quickfix<CR>", desc = "Open trouble quickfix list" },
		{ "<leader>xl", "<cmd>Trouble loclist<CR>", desc = "Open trouble location list" },
		{ "<leader>xs", "<cmd>Trouble symbols toggle<CR>", desc = "Open document symbols" },
		{ "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble" },
	},
}
