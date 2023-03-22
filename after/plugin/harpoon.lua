local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Keymaps
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- Navigation
vim.keymap.set("n", "<C-n>", function() ui.nav_next() end)
vim.keymap.set("n", "<C-b>", function() ui.nav_prev() end)
