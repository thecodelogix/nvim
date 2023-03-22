vim.g.VtrUseVtrMaps = 1
vim.g.VtrGitCdUpOnOpen = 0
vim.g.VtrPercentage = 30

vim.keymap.set("n", "<leader>fs", ":VtrFlushCommand<cr>:VtrSendCommandToRunner<cr>")
vim.keymap.set("n", "<C-f>", ":VtrSendLinesToRunner<cr>")
vim.keymap.set("v", "<C-f>", ":VtrSendLinesToRunner<cr>")

vim.keymap.set("n", "<leader>osr", ":VtrOpenRunner { 'orientation': 'h', 'percentage': 50 }<cr>")
vim.keymap.set("n", "<leader>opr", ":VtrOpenRunner { 'orientation': 'h', 'percentage': 50, 'cmd': 'pry' }<cr>")
vim.keymap.set("n", "<leader>irb", ":VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>")
vim.keymap.set("n", "<leader>rc", ":VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'rails c'}<cr>")
