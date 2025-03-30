local opt = vim.opt
local global = vim.g

global.loaded_netrw = 1
global.loaded_netrwPlugin = 1

-- Set leader key to the space key
global.mapleader = " "
global.maplocalleader = " "

opt.cmdheight = 1
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.expandtab = true
opt.autoindent = true

vim.opt.fillchars:append({ eob = " " })

-- Turning on nubmers and make them relative
opt.relativenumber = true
opt.number = true

-- Sync clipboard between OS and Neovim.
opt.clipboard = "unnamedplus"

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Show which line your cursor is on
opt.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Bufferline
opt.termguicolors = true

--Save time
vim.o.timeoutlen = 300 -- Sets the timeout length to 300ms
vim.o.ttimeoutlen = 0

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Transparent
vim.api.nvim_create_autocmd("ColorScheme", {
	once = true,
	callback = vim.schedule_wrap(function()
		vim.cmd([[
            hi FloatBorder guibg=none
            hi NormalFloat guibg=none

            " telescope
            hi TelescopeBorder guibg=none

            " tressitter
            hi TreesitterContext guibg=none
            hi TreesitterContextLineNumber guifg=orange
        ]])
	end),
	group = vim.api.nvim_create_augroup("customcolorscheme", {}),
})

-- Transparent color scheme
local transparent_highlights = {
	"Normal",
	"NormalNC",
	"LineNr",
	"Folded",
	"NonText",
	"SpecialKey",
	"VertSplit",
	"SignColumn",
	"EndOfBuffer",
	"TablineFill",
}

for _, hl in ipairs(transparent_highlights) do
	vim.cmd.highlight(hl .. " guibg=NONE ctermbg=NONE")
end

vim.api.nvim_create_autocmd("RecordingEnter", {
	callback = function()
		vim.opt.cmdheight = 1
	end,
})

vim.api.nvim_create_autocmd("RecordingLeave", {
	callback = function()
		vim.opt.cmdheight = 0
	end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "MiniStatuslineFilename", { bg = "NONE" })

		vim.api.nvim_set_hl(0, "MiniStatuslineFilename", { bg = "NONE", fg = "White" })
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.opt.cmdheight = 0
	end,
})

local cmd = vim.cmd

cmd("colorscheme nord")
