return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⣿⡿⢫⣷⣿⣿⣿⣿⣿⣿⣿⣾⣯⣿⡿⢧⡚⢷⣌⣽⣿⣿⣿⣿⣿⣶⡌⣿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⣿⠇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣇⣘⠿⢹⣿⣿⣿⣿⣿⣻⢿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣻⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⡇⠀⣬⠏⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⠀⠈⠁⠀⣿⡇⠘⡟⣿⣿⣿⣿⣿⣿⣿⣿⡏⠿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⡏⠀⠀⠐⠀⢻⣇⠀⠀⠹⣿⣿⣿⣿⣿⣿⣩⡶⠼⠟⠻⠞⣿⡈⠻⣟⢻⣿⣿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢿⠀⡆⠀⠘⢿⢻⡿⣿⣧⣷⢣⣶⡃⢀⣾⡆⡋⣧⠙⢿⣿⣿⣟⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⡥⠂⡐⠀⠁⠑⣾⣿⣿⣾⣿⣿⣿⡿⣷⣷⣿⣧⣾⣿⣿⣿⣿⣿⣿⣿",
			"⣿⣿⡿⣿⣍⡴⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⣄⣀⣷⡄⣙⢿⣿⣿⣿⣿⣯⣶⣿⣿⢟⣾⣿⣿⢡⣿⣿⣿⣿⣿",
			"⣿⡏⣾⣿⣿⣿⣷⣦⠀⠀⠀⢀⡀⠀⠀⠠⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣡⣾⣿⣿⢏⣾⣿⣿⣿⣿⣿",
			"⣿⣿⣿⣿⣿⣿⣿⣿⡴⠀⠀⠀⠀⠀⠠⠀⠰⣿⣿⣿⣷⣿⠿⠿⣿⣿⣭⡶⣫⠔⢻⢿⢇⣾⣿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⡿⢫⣽⠟⣋⠀⠀⠀⠀⣶⣦⠀⠀⠀⠈⠻⣿⣿⣿⣾⣿⣿⣿⣿⡿⣣⣿⣿⢸⣾⣿⣿⣿⣿⣿⣿⣿",
			"⡿⠛⣹⣶⣶⣶⣾⣿⣷⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢿⣿⡿⠫⠾⠿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			"⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⡆⣠⢀⣴⣏⡀⠀⠀⠀⠉⠀⠀⢀⣠⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			"⠿⠛⠛⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣯⣟⠷⢷⣿⡿⠋⠀⠀⠀⠀⣵⡀⢠⡿⠋⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⢿⣿⣿⠂⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣿⣿⣿⣿⣍⠛⠿⣿⣿⣿⣿⣿⣿",
			-- "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
			-- "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
			-- "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
			-- "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
			-- "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
			-- "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
			-- "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
			-- " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
			-- " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
			-- "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
			-- "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
			-- "                                   ",
			-- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			-- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			-- "⣿⣿⣿⠿⢿⣿⣿⣿⣿⡟⠀⢠⡄⠀⢻⣿⣿⣿⣿⡿⢿⣿⣿",
			-- "⣿⣿⣿⠀⠈⣿⣿⣿⡟⠀⢀⣿⣷⠀⠈⣿⣿⣿⣿⠀⢸⣿⣿",
			-- "⣿⣿⣿⠀⠀⣿⣿⣿⠇⠀⣾⣿⣿⣇⠀⢸⣿⣿⣿⠀⢸⣿⣿",
			-- "⣿⣿⣿⠀⠀⣿⣿⣿⠀⢠⣿⣿⣿⣿⠀⠀⣿⣿⣿⠀⢸⣿⣿",
			-- "⣿⣿⣿⠀⠀⣿⣿⡇⠀⢸⣿⣿⣿⣿⡆⠀⣿⣿⣿⠀⢸⣿⣿",
			-- "⣿⣿⣿⠀⠀⣿⣿⡇⠀⢸⣿⣿⣿⣿⡇⠀⢸⣿⣿⠀⢸⣿⣿",
			-- "⣿⣿⣿⣠⣤⣿⣿⡇⠀⢸⣿⣿⣿⣿⠇⠀⣿⣿⣿⣤⣼⣿⣿",
			-- "⣿⣿⣿⣿⣿⣧⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⣾⣿⣿⣿⣿",
			-- "⣿⣿⣿⣿⣿⣿⡄⠀⢻⣿⣿⣿⣿⣿⣿⠏⠀⣰⣿⣿⣿⣿⣿",
			-- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⢿⣿",
			-- "⣿⡏⢹⣿⠉⣿⣿⠉⠹⣿⡍⠹⠟⢩⣏⠙⡿⢉⡏⠑⡶⠊⢹",
			-- "⣿⡇⢠⣤⠀⣿⠃⠘⠀⢻⡿⠂⠀⢿⣿⠆⢁⣾⡇⠀⢡⠀⢸",
			-- "⣿⣷⣾⣿⣶⣷⣶⣿⣷⣶⣶⣾⣷⣶⣷⣶⣿⣿⣷⣶⣿⣶⣾",
			-- [[⠀ ⣀⣀⡀⠀⠀⣀⣀⣀⣀⣀⣀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⣀⣀⡀⠀⢀⣀⡀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀]],
			-- [[⣴⣿⠟⠛⢿⣦⡀⣿⡟⠛⠛⠛⣿⣷⣰⣿⠟⠛⢿⣷⡄⢠⣠⣤⣿⠻⠗⠀⣴⣿⠟⠛⢿⣦⣸⣿⣧⣾⡿⢛⣿⡿⠟⠻⣿⣦⠀]],
			-- [[⣿⡇⠀⠀⠀⣿⡇⣿⣷⣄⡀⠀⠉⠁⣿⣇⠀⠀⠀⣿⡇⣀⡉⠻⢿⣶⣄⡰⣿⣇⠀⠀⠀⣿⡿⣿⣿⣅⡀⢸⣿⡀⠀⠀⢸⣿⠀]],
			-- [[⠙⠿⣷⣶⣦⣿⡇⠛⠋⠛⢿⣷⣤⡀⠙⠿⣷⣶⡦⣿⡇⢿⣷⣶⣶⣿⣿⣿⠙⠿⣷⣶⡆⣿⡟⠛⠋⠻⢿⣶⣿⣿⣷⣶⣼⣿ ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
			dashboard.button("r", "  Find Recent Files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("c", "  Configuration", "<cmd>edit ~/.config/nvim/init.lua<CR>"),
			dashboard.button("q", "  Quit", ":q<CR>"),
		}

		vim.opt.showtabline = 0
		vim.opt.laststatus = 0
		vim.opt.ruler = false

		vim.g.start_time = vim.loop.hrtime()

		alpha.setup(dashboard.opts)

		vim.api.nvim_create_augroup("alpha_tabline", { clear = true })

		vim.api.nvim_create_autocmd("FileType", {
			group = "alpha_tabline",
			pattern = "alpha",
			command = "set showtabline=0 laststatus=0 noruler",
		})

		vim.api.nvim_create_autocmd("FileType", {
			group = "alpha_tabline",
			pattern = "alpha",
			callback = function()
				vim.api.nvim_create_autocmd("BufUnload", {
					group = "alpha_tabline",
					buffer = 0,
					command = "set showtabline=2 ruler laststatus=3",
				})
			end,
		})

		local opts = {
			layout = {
				{ type = "padding", val = 4 },
				dashboard.section.header,
				{ type = "padding", val = 1 },
				dashboard.section.hi_top_section,
				dashboard.section.hi_middle_section,
				dashboard.section.hi_bottom_section,
				{ type = "padding", val = 2 },
				dashboard.section.buttons,
				{ type = "padding", val = 3 },
				dashboard.section.footer,
			},
			opts = {
				margin = 5,
			},
		}

		alpha.setup(opts)
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
