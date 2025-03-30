return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = {
						normal = {
							a = { fg = "#ffffff", bg = "#005f63" },
							b = { fg = "#ffffff", bg = "NONE" },
							c = { fg = "#ffffff", bg = "NONE" },
							y = { fg = "#ffffff", bg = "NONE" },
						},
						insert = { a = { fg = "#ffffff", bg = "#008080" } },
						visual = { a = { fg = "#ffffff", bg = "#9400d3" } },
						replace = { a = { fg = "#ffffff", bg = "#ff4500" } },
					},
					-- Hide statusline on specific filetypes
					disabled_filetypes = {
						statusline = {},
						winbar = {},
						"dashboard", -- Hide on dashboard
						"alpha", -- Hide on alpha dashboard
						"", -- Hide on empty buffer
					},
					-- Add condition to hide statusline
					hide_statusline_on_startup = true,
				},
			})

			-- Create autocmd to hide statusline on specific conditions
			-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
			-- 	callback = function()
			-- 		local buftype = vim.bo.buftype
			-- 		local filetype = vim.bo.filetype
			-- 		local bufname = vim.fn.bufname()
			--
			-- 		-- Hide statusline if:
			-- 		-- 1. Buffer is empty/unnamed
			-- 		-- 2. Filetype is dashboard/alpha
			-- 		-- 3. Buffer is the main Neovim page
			-- 		if bufname == "" or filetype == "dashboard" or filetype == "alpha" or buftype == "nofile" then
			-- 			vim.opt_local.laststatus = 0
			-- 		else
			-- 			vim.opt_local.laststatus = 2
			-- 		end
			-- 	end,
			-- })
		end,
	},
}
