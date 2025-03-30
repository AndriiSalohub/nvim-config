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
					disabled_filetypes = {
						statusline = {},
						winbar = {},
						"dashboard",
						"alpha",
						"",
					},
					hide_statusline_on_startup = true,
				},
			})
		end,
	},
}
