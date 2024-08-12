-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Change Window
vim.keymap.set("n", "<C-H>", "<C-w>h")
vim.keymap.set("n", "<C-J>", "<C-w>j")
vim.keymap.set("n", "<C-K>", "<C-w>k")
vim.keymap.set("n", "<C-L>", "<C-w>l")

-- Resize Window
vim.keymap.set("n", "<C-Left>", "<C-w><")
vim.keymap.set("n", "<C-Right>", "<C-w>>")
vim.keymap.set("n", "<C-Up>", "<C-w>+")
vim.keymap.set("n", "<C-Down>", "<C-w>-")

-- Keep search term centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep jumps up/down centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Search and replace all instances
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Keep selection when shifting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Movement in insert mode
vim.keymap.set("i", "<C-h>", "<C-O>h")
vim.keymap.set("i", "<C-j>", "<C-O>j")
vim.keymap.set("i", "<C-k>", "<C-O>k")
vim.keymap.set("i", "<C-l>", "<C-O>l")

-- Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
