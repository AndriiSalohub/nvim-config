return {
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		config = function()
			local comment = require("Comment")

			local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

			comment.setup({
				pre_hook = ts_context_commentstring.create_pre_hook(),
			})

			vim.api.nvim_set_keymap(
				"n",
				"<leader>/",
				'<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"x",
				"<leader>/",
				'<esc><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
				{ noremap = true, silent = true }
			)
		end,
	},
}
