local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	ensure_installed = {
		"markdown",
		"javascript",
		"json",
		"yaml",
		"rust",
		"css",
		"html",
		"lua",
		"python",
		"go",
		"gomod",
		"gosum",
		"gowork",
		"bash",
		"cpp",
		"c",
	},
	rainbow = {
		enable = true,
		disable = { "html" },
		extended_mode = false,
		max_file_lines = nil,
	},
	autotag = { enable = true },
	incremental_selection = { enable = true },
	indent = { enable = true },
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

require('nvim-treesitter.parsers').get_parser_configs().asm = {
    install_info = {
        url = 'https://github.com/rush-rs/tree-sitter-asm.git',
        files = { 'src/parser.c' },
        branch = 'main',
    },
}
