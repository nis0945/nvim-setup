vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- # Basic shortcuts
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save file" })

-- # Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true, desc = "Escape terminal mode" })

-- # Application shortcuts
-- vim.keymap.set("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Quit Neovim" })
vim.keymap.set(
    "n",
    "<leader>qq",
    function()
        vim.cmd("qa!")
        vim.cmd("!cls")
    end,
    { desc = "Quit Neovim" })

-- # Buffer navigation
vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Go-to prev buffer" })
vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Go-to next buffer" })
