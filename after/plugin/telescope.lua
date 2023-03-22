local builtin = require('telescope.builtin')
local action_layout = require("telescope.actions.layout")

require('telescope').setup{
  defaults = {
    -- preview = false,
    mappings = {
      i = {
        ["?"] = action_layout.toggle_preview,
      },
    },
  },
}
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', ';', builtin.buffers, {})
vim.keymap.set('n', '\\', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


-- colors
vim.cmd('highlight TelescopeNormal guibg=#1d1d1d')
vim.cmd('highlight TelescopeNormalFloat guibg=#1d1d1d')
vim.cmd('highlight TelescopeBorder guibg=#1d1d1d')
vim.cmd('highlight TelescopeSelection guibg=#202020')
vim.cmd('highlight Normal guibg=#1d1d1d')
vim.cmd('highlight NormalFloat guibg=#1d1d1d')
--
-- vim.cmd('highlight TelescopeSelection guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeMatching guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeBorder guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptBorder guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeResultsBorder guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePreviewBorder guibg=#1d1d1d')
-- vim.cmd('highlight FloatBorder guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeBorder guifg=#1d1d1d')
-- vim.cmd('highlight TelescopeNormal guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptNormal guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptBorder guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeNormalFloat guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeBorderFloat guifg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptNormalFloat guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptBorderFloat guibg=#1d1d1d')
-- -- vim.cmd('highlight TelescopePromptTitle guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePreviewTitle guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeResultsTitle guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeMatching guifg=#ff0000')
-- vim.cmd('highlight TelescopeSelection guibg=#ff0000')
-- vim.cmd('highlight TelescopeSelectionCaret guibg=#ff0000')
-- vim.cmd('highlight TelescopeMultiSelection guibg=#ff0000')
-- vim.cmd('highlight TelescopePromptTitleFloat guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePreviewTitleFloat guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeResultsTitleFloat guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeMatchingFloat guifg=#ff0000')
-- vim.cmd('highlight TelescopeSelectionFloat guibg=#ff0000')
-- vim.cmd('highlight TelescopeSelectionCaretFloat guibg=#ff0000')
-- vim.cmd('highlight TelescopeMultiSelectionFloat guibg=#ff0000')
-- vim.cmd('highlight TelescopeNormalNC guibg=#1d1d1d')
-- vim.cmd('highlight TelescopeBorderNC guifg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptNormalNC guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptBorderNC guibg=#1d1d1d')
-- vim.cmd('highlight TelescopePromptTitleNC guibg=#1d1d1d')

--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
