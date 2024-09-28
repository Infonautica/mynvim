-- Setup telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = 'Find word' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })

-- Setup neo tree mappings
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { silent = true, noremap = true })

vim.keymap.set('n', '<C-e>', '$')
vim.keymap.set('v', '<C-e>', '$')
