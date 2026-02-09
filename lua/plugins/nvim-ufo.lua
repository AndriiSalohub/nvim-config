return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	event = "BufReadPost", -- load when a buffer is opened
	config = function()
		-- Basic recommended setup
		vim.o.foldcolumn = "1" -- Show fold column
		vim.o.foldlevel = 99 -- Keep all folds open by default
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true -- Enable folding

		-- Use treesitter or indentation for folding
		vim.o.foldmethod = "expr"
		vim.o.foldexpr = "nvim_treesitter#foldexpr()"

		-- UFO setup
		require("ufo").setup({
			provider_selector = function(_, _, _)
				return { "treesitter", "indent" }
			end,
		})
	end,
}
