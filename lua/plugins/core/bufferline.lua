return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					offsets = {
						{
							filetype = "NvimTree",
							text = "File explorer",
							separator = true,
						},
					},
					show_buffer_close_icons = false,
					indicator = {
						style = "none",
					},
				},
				highlights = {
					fill = {
						bg = "none",
					},
					background = {
						bg = "none",
					},
					tab = {
						bg = "none",
					},
					tab_selected = {
						bg = "none",
					},
					tab_close = {
						bg = "none",
					},
					close_button = {
						bg = "none",
					},
					close_button_visible = {
						bg = "none",
					},
					close_button_selected = {
						bg = "none",
					},
					buffer_visible = {
						bg = "none",
					},
					buffer_selected = {
						bg = "none",
						bold = true,
						italic = false,
					},
					numbers = {
						bg = "none",
					},
					numbers_visible = {
						bg = "none",
					},
					numbers_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					diagnostic = {
						bg = "none",
					},
					diagnostic_visible = {
						bg = "none",
					},
					diagnostic_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					hint = {
						bg = "none",
					},
					hint_visible = {
						bg = "none",
					},
					hint_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					hint_diagnostic = {
						bg = "none",
					},
					hint_diagnostic_visible = {
						bg = "none",
					},
					hint_diagnostic_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					info = {
						bg = "none",
					},
					info_visible = {
						bg = "none",
					},
					info_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					info_diagnostic = {
						bg = "none",
					},
					info_diagnostic_visible = {
						bg = "none",
					},
					info_diagnostic_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					warning = {
						bg = "none",
					},
					warning_visible = {
						bg = "none",
					},
					warning_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					warning_diagnostic = {
						bg = "none",
					},
					warning_diagnostic_visible = {
						bg = "none",
					},
					warning_diagnostic_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					error = {
						bg = "none",
					},
					error_visible = {
						bg = "none",
					},
					error_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					error_diagnostic = {
						bg = "none",
					},
					error_diagnostic_visible = {
						bg = "none",
					},
					error_diagnostic_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					modified = {
						bg = "none",
					},
					modified_visible = {
						bg = "none",
					},
					modified_selected = {
						bg = "none",
					},
					duplicate_selected = {
						bg = "none",
					},
					duplicate_visible = {
						bg = "none",
					},
					duplicate = {
						bg = "none",
					},
					pick_selected = {
						bg = "none",
						bold = false,
						italic = false,
					},
					pick_visible = {
						bg = "none",
						bold = false,
						italic = false,
					},
					pick = {
						bg = "none",
						bold = false,
						italic = false,
					},
					indicator_selected = {
						fg = "none",
						bg = "none",
					},
					separator = {
						fg = "none",
						bg = "none",
					},
					separator_selected = {
						fg = "none",
						bg = "none",
					},
					separator_visible = {
						fg = "none",
						bg = "none",
					},
				},
			})

			vim.keymap.set(
				"n",
				"]b",
				":BufferLineCycleNext<CR>",
				{ noremap = true, silent = true, desc = "[N]ext [B]uffer" }
			)
			vim.keymap.set(
				"n",
				"[b",
				":BufferLineCyclePrev<CR>",
				{ noremap = true, silent = true, desc = "[P]revious [B]uffer" }
			)
			vim.keymap.set(
				"n",
				"<Leader>bc",
				":bdelete<CR>",
				{ noremap = true, silent = true, desc = "[B]uffer [C]lose" }
			)
			vim.keymap.set(
				"n",
				"<Leader>ba",
				":BufferLineCloseOthers<CR>",
				{ noremap = true, silent = true, desc = "[B]uffer [C]lose [A]ll" }
			)
			vim.keymap.set(
				"n",
				"<Leader>bd",
				":BufferLinePick<CR>",
				{ noremap = true, silent = true, desc = "[P]ick [B]uffer" }
			)
			vim.keymap.set(
				"n",
				"<Leader>bf",
				":BufferLineMoveNext<CR>",
				{ noremap = true, silent = true, desc = "[B]uffer Move [F]orward" }
			)
			vim.keymap.set(
				"n",
				"<Leader>bb",
				":BufferLineMovePrev<CR>",
				{ noremap = true, silent = true, desc = "[B]uffer Move [B]ackward" }
			)
			vim.keymap.set(
				"n",
				"<Leader>bp",
				":BufferLinePickClose<CR>",
				{ noremap = true, silent = true, desc = "[B]uffer [P]ick to [C]lose" }
			)
		end,
	},
}
