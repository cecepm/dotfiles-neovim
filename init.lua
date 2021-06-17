local cmd = vim.cmd
local g = vim.g
local o = vim.o

-- load plugins
require "plugins"
require "general-config"
require "top-bufferline"
require "statusline"

-- colorscheme
cmd "syntax on"
--local base16 = require "base16"
--base16(base16.themes["onedark"], true)

o.background = "dark"
cmd "colorscheme gruvbox"

require('gitsigns').setup()

-- blankline
g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "nvimtree"
require "mappings"
