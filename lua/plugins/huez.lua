return {
	"vague2k/huez.nvim",
	branch = "stable",
	config = function()
		require("huez").setup({})
		vim.api.nvim_set_keymap(
			"n",
			"<leader>ct",
			":Huez<CR>",
			{ noremap = true, silent = true, desc = "[C]hange [C]olorscheme" }
		)
	end,
}
