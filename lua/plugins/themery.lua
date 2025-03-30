return {
	"zaldih/themery.nvim",
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "nord",
					colorscheme = "nord",
				},
			},
			livePreview = true,
		})

		vim.api.nvim_set_keymap(
			"n",
			"<leader>ct",
			":Themery<CR>",
			{ noremap = true, silent = true, desc = "Change Colorscheme" }
		)
	end,
}
