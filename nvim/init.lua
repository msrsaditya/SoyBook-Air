-- Basics
vim.opt.number = true              -- Show line numbers
vim.opt.mouse = 'a'                -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard

-- Search
vim.opt.ignorecase = true     -- Case insensitive search
vim.opt.hlsearch = true       -- Highlight search results
vim.opt.incsearch = true      -- Show search matches as you type

-- Indentation
vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.shiftwidth = 4        -- Number of spaces for auto-indent
vim.opt.tabstop = 4           -- Number of spaces that a tab counts for
vim.opt.smartindent = true    -- Enable smart-indent

-- File
vim.opt.fileencoding = 'utf-8' -- Default file encoding
vim.opt.backup = false         -- Don't create backup files
vim.opt.swapfile = false       -- Don't create swap files
vim.opt.undofile = true        -- Enable persistent undo

-- Visual
vim.opt.termguicolors = true  -- Enable 24-bit RGB colors
