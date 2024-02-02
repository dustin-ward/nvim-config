require 'dustinw.plugins'
require 'dustinw.settings'
require 'dustinw.maps'

local themeStatus, kanagawa = pcall(require, "kanagawa")

if themeStatus then
	vim.cmd("colorscheme kanagawa")
else
	return
end
