local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

--local status, telescope = pcall(require, "telescope.builtin")
--if status then
--	-- Telescope
--	map("n", "<leader>ff", telescope.find_files)
--	map("n", "<leader>fg", telescope.live_grep)
--	map("n", "<leader>fb", telescope.buffers)
--	map("n", "<leader>fh", telescope.help_tags)
--	map("n", "<leader>fs", telescope.git_status)
--	map("n", "<leader>fc", telescope.git_commits)
--else
--	print("Telescope not found")
--end

-- Navigate windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Keep search terms centered
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Search and replace all instances
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Keep selection when shifting
map("v", ">", ">gv")
map("v", "<", "<gv")

-- Movement in insert mode
map("i", "<C-h>", "<C-O>h")
map("i", "<C-j>", "<C-O>j")
map("i", "<C-k>", "<C-O>k")
map("i", "<C-l>", "<C-O>l")

-- NeoTree
map("n", "<C-n>", "<CMD>Neotree toggle<CR>")

-- Commentary
map("n", "<C-_>", "<Plug>CommentaryLine")
map("v", "<C-_>", "<Plug>Commentary")
