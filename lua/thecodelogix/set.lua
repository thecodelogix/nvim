-- set leader
vim.g.mapleader = " "

-- fat cursor
vim.opt.guicursor = ""
vim.g.cursorline = false

vim.opt.nu = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.list = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.list = true
vim.opt.listchars = "tab:»·,trail:·,nbsp:·"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.autowrite = true
vim.opt.modelines = 0
vim.opt.modeline= false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wildignore:append {"*/node_modules/*"}

vim.opt.showmatch = true
vim.opt.linebreak = true
vim.opt.gdefault = true -- assume the /g flag on all :s substitutions to replace all matches in a line
vim.opt.autoindent = true
vim.opt.backspace = "indent,eol,start"

vim.opt.termguicolors = true

vim.opt.backupdir = os.getenv("HOME") .. "/.tmp"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.tags = "^=.git/tags"

-- Clipboard
vim.opt.clipboard = "unnamed"

-- Open new split pages to right and bottom
vim.opt.splitbelow = true
vim.opt.splitright = true


-- Set spellfile to location that is guaranteed to exist, can be symlinked to
-- Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
vim.opt.spell = false
vim.opt.spellfile = "$HOME/.vim-spell-en.utf-8.add"
vim.opt.spelllang = "en_us"

-- Autocomplete with dictionary words when spell check is on
vim.opt.complete = "kspell"

-- Always use vertical diffs
vim.opt.diffopt = "vertical"
