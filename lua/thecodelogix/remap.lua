vim.g.mapleader = " "

vim.keymap.set("n", "-", vim.cmd.Explore)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/thecodelogix/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Enter Zenmode with <leader>z
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>")

-- Switch between the last two files
vim.keymap.set("n", "<leader><leader>", "<C-^>")

-- Get off my lawn
vim.keymap.set("n", "<Left>", ":echoe 'Use h'<CR>")
vim.keymap.set("n", "<Right>", ":echoe 'Use l'<CR>")
vim.keymap.set("n", "<Up>", ":echoe 'Use k'<CR>")
vim.keymap.set("n", "<Down>", ":echoe 'Use j'<CR>")

-- vim-test mappings
vim.keymap.set("n", "<silent> <Leader>t", ":TestFile<CR>")
vim.keymap.set("n", "<silent> <Leader>s", ":TestNearest<CR>")
vim.keymap.set("n", "<silent> <Leader>l", ":TestLast<CR>")
vim.keymap.set("n", "<silent> <Leader>a", ":TestSuite<CR>")
vim.keymap.set("n", "<silent> <Leader>gt", ":TestVisit<CR>")

-- Run commands that require an interactive shell
vim.keymap.set("n", "<Leader>r", ":RunInInteractiveShell<Space>")

-- Navigate between VIM pages with Ctrl + h,j,k,l
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Clear hlsearch
vim.keymap.set("n", "<Leader>,", ":nohlsearch <CR>")

-- Execute line
vim.keymap.set("n", "<Leader>x", ":exec getline('.') <CR>")

-- Generate ctags
vim.keymap.set("n", "<Leader>ct", "!ctags --exclude=node_modules --exclude=public/packs --exclude=.DS_Store --exclude=git --exclude=bootstrap/cached/compiled --exclude=vendor -R .<CR>")

-- Edit config
vim.keymap.set("n", "<Leader>ev", ":tabedit ~/.config/nvim/lua/thecodelogix/set.lua <CR>")
vim.keymap.set("n", "<Leader>ep", ":tabedit ~/.config/nvim/lua/thecodelogix/packer.lua <CR>")
vim.keymap.set("n", "<Leader>ek", ":tabedit ~/.config/nvim/lua/thecodelogix/remap.lua <CR>")
vim.keymap.set("n", "<Leader>et", ":tabedit ~/.tmux.conf.local <CR>")
vim.keymap.set("n", "<Leader>ez", ":tabedit ~/.zshrc.local <CR>")


-- zoom a vim pane, <C-w>= to re-balance
vim.keymap.set("n", "<leader>-", ":wincmd _<cr>:wincmd \\|<cr>")
vim.keymap.set("n", "<leader>=", ":wincmd =<cr>")
