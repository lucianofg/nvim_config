-- General settings
vim.o.title = true
vim.o.number = true
vim.o.hidden = true
vim.o.mouse = 'a'
vim.o.signcolumn = 'yes'
vim.o.textwidth = 72
vim.o.synmaxcol = 160
vim.o.termguicolors = true
vim.o.wrap = true
vim.o.showbreak = '+++'
vim.o.linebreak = true
vim.o.list = true
vim.o.updatetime = 300
vim.o.splitbelow = true
vim.o.splitright = true

-- Search config
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

-- Tab config
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Terminal auto-jump to normal mode after exit
vim.api.nvim_exec("autocmd TermClose * call feedkeys(\"j\")", false)

require('light')
vim.cmd('colorscheme PaperColor')

vim.api.nvim_set_var('mapleader', ' ')

vim.keymap.set('n', '<M-C>', ':e $HOME/.config/nvim/init.lua<CR>', { noremap = true })
vim.keymap.set('n', 'n', 'nzz', { noremap = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true })
vim.keymap.set('n', '<C-k>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<C-j>', ':bprev<CR>', { noremap = true })
vim.keymap.set('n', '<M-J>', ':term<CR>a', { noremap = true })
vim.keymap.set('t', '<C-b>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('n', '<leader>nh', ':nohlsearch<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tf', ':TableFormat<CR>', { noremap = true })
vim.keymap.set('n', '<leader>y', '"+y', { noremap = true })
vim.keymap.set('n', '<leader>p', '"+p', { noremap = true })
vim.keymap.set('n', '<leader>k', ':bd<CR>', { noremap = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true })
