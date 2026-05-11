
-- NOTICE: most plugin keybinds are mapped in the plugins directory

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- intrabuffer settings
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- this allows for you to move highlighted text (it auto indents)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- allows you to paste without replacing the buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- formatting
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)

-- allows you to yank to computer clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- buffer navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- allows you to replace the word you currently have selected
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- makes file executable via chmod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


