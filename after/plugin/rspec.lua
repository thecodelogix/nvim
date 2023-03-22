vim.g.rspec_command = "VtrSendCommandToRunner! bundle exec rspec {spec}"

vim.keymap.set("n", "<Leader>t", ":call RunCurrentSpecFile()<CR>")
vim.keymap.set("n", "<Leader>s", ":call RunNearestSpec()<CR>")
vim.keymap.set("n", "<Leader>l", ":call RunLastSpec()<CR>")
-- vim.keymap.set("n", "<Leader>a", ":call RunAllSpecs()<CR>")
