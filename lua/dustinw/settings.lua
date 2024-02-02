local global = vim.g
local o = vim.o

-- Space key leader
global.mapleader = " "
global.maplocalleader = " "

-- Default settings
o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.scrolloff = 8
o.nowrap = true
o.hlsearch = true
o.smartcase = true
o.linebreak = true
o.noerrorbells = true
o.backspace = "indent,eol,start"
o.viminfo= "'100,<1000,s100,h"

-- Highlight current line
o.cursorline = true

-- Use spaces instead of tabs
o.expandtab = false

-- Number of spaces for each autoindent
o.shiftwidth = 4

-- Number of spaces that tab counts for in a file
o.tabstop = 4
o.softtabstop = 4

o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
--o.title = true
--o.hidden = true
--o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.splitbelow = "splitright"
o.termguicolors = true

