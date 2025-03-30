-- Layzinit is the entry point for the lazy plugin manager
-- Every plugin is loaded in a lazy manner, so that the startup time is reduced
-- If you want another folder structure, you can change the path in the require statement

vim.g.mapleader = " " -- Set <leader> to space
vim.g.maplocalleader = " " -- Set <leader> to space

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "colorschemes.init" },
	{ import = "plugins.init" },
})
