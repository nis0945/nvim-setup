-- # Editor
vim.opt.number = true
vim.opt.relativenumber = true

-- # Editing
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

-- # Code folding
vim.o.foldmethod = "manual"
vim.o.foldenable = false

-- # Theme
vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})

-- # UI
vim.o.termguicolors = true
vim.o.laststatus = 0

-- # Shell
vim.o.shell = "powershell.exe"
vim.o.shellcmdflag = "-NoLogo -Command"
vim.o.shellquote = ""
vim.o.shellxquote = ""
