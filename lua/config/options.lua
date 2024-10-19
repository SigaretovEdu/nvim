local cmd = vim.cmd
local opt = vim.opt

vim.g.mapleader = " "

opt.backspace = {"eol", "start", "indent"}
opt.clipboard = "unnamedplus"
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"
opt.matchpairs = {"(:)", "{:}", "[:]", "<:>"}
opt.syntax = "enable"
opt.showmode = false
opt.mouse = "a"
opt.number = true
opt.scrolloff = 5
opt.sidescrolloff = 3
opt.signcolumn = "no"
opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.termguicolors = true
opt.guicursor = "a:block"

-- indentation
local indent = 4
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = indent
opt.smartindent = true
opt.softtabstop = indent
opt.tabstop = indent
opt.shiftround = true

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.wildignore = opt.wildignore + {"*/.build/*", "*/.git/*"}
opt.wildmenu = true

-- Hide cmd line
opt.cmdheight = 0

-- backups
opt.backup = false
opt.swapfile = false
opt.writebackup = false

-- perfomance
opt.history = 100
opt.redrawtime = 1500
opt.timeoutlen = 250
opt.ttimeoutlen = 10
opt.updatetime = 100

-- persistent undo
local undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true
opt.undodir = undodir
opt.undolevels = 1000
opt.undoreload = 10000

-- moving
opt.whichwrap = "<,>,[,]"