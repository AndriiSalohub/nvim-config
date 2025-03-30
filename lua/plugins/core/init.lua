vim.g.mapleader = " "

return {
	{ require("plugins.core.bufferline") },
	{ require("plugins.core.lualine") },
	{ require("plugins.core.nvim-tree") },
	{ require("plugins.core.oil") },
	{ require("plugins.core.telescope") },
	{ require("plugins.core.treesitter") },
}
