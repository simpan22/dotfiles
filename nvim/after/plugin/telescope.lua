local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-Space>', builtin.find_files, {})
vim.keymap.set('n', '<leader><C-Space>', builtin.live_grep, {})
