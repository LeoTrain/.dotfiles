-- Appearance
vim.opt.guicursor = ""
vim.opt.number = true              -- Show line numbers
vim.opt.relativenumber = true      -- Show relative line numbers for easier navigation
vim.opt.cursorline = true          -- Highlight the current line
vim.opt.signcolumn = "yes"         -- Always show the sign column (for diagnostics, git signs, etc.)
vim.opt.termguicolors = true       -- Enable 24-bit RGB colors for better theme support

-- Indentation
vim.opt.tabstop = 4                -- Number of spaces for a tab
vim.opt.shiftwidth = 4             -- Number of spaces for autoindent
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.smartindent = true         -- Automatically indent in code-like contexts
vim.opt.autoindent = true          -- Copy the indentation from the previous line

-- Editing
vim.opt.wrap = false               -- Disable line wrapping
vim.opt.scrolloff = 8              -- Keep 8 lines visible around the cursor when scrolling
vim.opt.sidescrolloff = 8          -- Same behavior for horizontal scrolling
vim.opt.clipboard = "unnamedplus"  -- Use the system clipboard for copy/paste
vim.opt.ignorecase = true          -- Ignore case when searching
vim.opt.smartcase = true           -- Override ignorecase if search contains uppercase letters
vim.opt.backup = false             -- Disable backup files
vim.opt.writebackup = false        -- Disable write backup files
vim.opt.swapfile = false           -- Disable swap files

-- Searching
vim.opt.hlsearch = true            -- Highlight search matches
vim.opt.incsearch = true           -- Show search matches while typing
vim.opt.showmatch = true           -- Highlight matching parentheses or brackets

-- Performance
vim.opt.updatetime = 300           -- Reduce time before triggering events (e.g., LSP)
vim.opt.timeoutlen = 500           -- Shorten key sequence timeout (in milliseconds)

-- Splits
vim.opt.splitright = true          -- Open vertical splits to the right
vim.opt.splitbelow = true          -- Open horizontal splits below

-- Other
vim.opt.completeopt = "menuone,noselect" -- Better completion menu behavior
vim.opt.mouse = "a"                -- Enable mouse support in all modes
vim.opt.undofile = true            -- Enable persistent undo

