vim.g.mapleader = " "
vim.g.maplocalleader = " "

------------------------
-- Windows Navigation --
------------------------
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.api.nvim_set_keymap("n", "<Space>w", ":w<CR>", { noremap = true, silent = true })

------------------------
-- Windows Management --
------------------------
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

--------------------
-- Tab management --
--------------------
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

---------------
-- Lua files --
---------------
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Run code in lua file" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Run line of code in lua file" })
vim.keymap.set("v", "<leader>x", ":.lua<CR>", { desc = "Run selected lines of code in lua file" })

-------------------
-- Quickfix list --
-------------------
vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>", { desc = "Move to the next item in the quickfix list" })
vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>", { desc = "Move to the previous item in the quickfix list" })

--------------------
-- Tmux Navigator --
--------------------
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<cr>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<cr>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<cr>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<cr>", { desc = "Move focus to the upper window" })
