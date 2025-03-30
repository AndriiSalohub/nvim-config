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
	end,
}
