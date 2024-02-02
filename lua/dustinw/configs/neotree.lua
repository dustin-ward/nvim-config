local status, nt = pcall(require, "neo-tree")
if not status then
	return
end

vim.api.nvim_create_augroup("neotree_autoopen", { clear = true })
vim.api.nvim_create_autocmd("BufWinEnter", {
  desc = "Open neo-tree on enter",
  group = "neotree_autoopen",
  callback = function()
    if not vim.g.neotree_opened then
      vim.cmd "Neotree show"
      vim.g.neotree_opened = true
    end
  end,
})

nt.setup({
	close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
	sort_case_insensitive = true, -- used when sorting files and directories in the tree
	window = {
		width = 25,
	},
	filesystem = {
		filtered_items = {
			visible = true, -- when true, they will just be displayed differently than normal items
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_hidden = false, -- only works on Windows for hidden files/directories
		},
	},
})
