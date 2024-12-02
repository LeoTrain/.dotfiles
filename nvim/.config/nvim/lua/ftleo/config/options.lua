local opt = vim.opt

-- User Interface
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 10
opt.sidescrolloff = 20
opt.termguicolors = true

-- Indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.autoindent = true

-- Research
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Saving Files
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true
opt.updatetime = 300

-- Performance
opt.lazyredraw = false
opt.timeoutlen = 500
opt.ttimeoutlen = 10
opt.redrawtime = 10000

-- Keyboard and Navigation
opt.mouse = "n"
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
opt.wrapscan = true

-- Appearence
opt.showmode = false
opt.showtabline = 2
opt.laststatus = 3
opt.list = true
vim.opt.listchars = {
    -- eol = "↴",
    tab = "» ",
    trail = "·",
    extends = "→",
    precedes = "←",
}

-- Whitespaces
-- opt.trim = true
