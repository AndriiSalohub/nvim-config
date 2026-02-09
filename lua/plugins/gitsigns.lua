return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local gitsigns = require("gitsigns")

		local function map(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { desc = "Git: " .. desc })
		end

		map("n", "<leader>gp", gitsigns.preview_hunk_inline, "Preview hunk inline")
		map("n", "<leader>gb", gitsigns.toggle_current_line_blame, "Toggle line blame")
		map("n", "<leader>gB", function()
			gitsigns.blame_line({ full = true })
		end, "Show full blame")

		-- vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", {})
		-- vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
	end,
}
