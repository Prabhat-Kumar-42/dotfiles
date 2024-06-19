vim.g.mapleader = " "

local keymap = vim.keymap

-- searh highlights --
keymap.set('n', '<leader>nh', ':nohl<CR>', {desc = 'clear highlights'})

------------------------- window management ----------------

------------ Split Window ----------
keymap.set('n', '<leader>sv', '<C-w>v', {desc = 'Split window vertically'})
keymap.set('n', '<leader>sh', '<C-w>s', {desc = 'Split window horizontally'})
keymap.set('n', '<leader>se', '<C-w>=', {desc = 'Make  splits equal size'})
keymap.set('n', '<leader>sc', '<cmd>close<CR>', {desc = 'Close current split'})

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', {desc = 'Open new tab'})
keymap.set('n', '<leader>tc', '<cmd>tabclose<CR>', {desc = 'Close current tab'})
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', {desc = 'Go to next tab'})
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', {desc = 'Go to previous tab'})
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', {desc = 'Open current buffer in new tab'})

---- VIM PANES NAVIGATION KEYMAPS ----
keymap.set('n', '<c-k>', ':wincmd k<CR>')
keymap.set('n', '<c-h>', ':wincmd h<CR>')
keymap.set('n', '<c-j>', ':wincmd j<CR>')
keymap.set('n', '<c-l>', ':wincmd l<CR>')



