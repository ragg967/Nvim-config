local keymap = vim.keymap.set

-- Telescope keybinds
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })

-- Oil
keymap('n', '<leader>e', '<cmd>Oil<cr>', { desc = 'Open file explorer' })
keymap('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent directory' })
