-- Toggle Light/Dark mode
function LightDarkModeToggle()
    if vim.o.background == 'light' then
        vim.cmd('set background=dark')
    else
        vim.cmd('set background=light')
    end
end

vim.keymap.set('n', '<M-l>', ':lua LightDarkModeToggle()<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<M-C>', ':e $HOME/.config/nvim/init.lua<CR>', { noremap = true })
-- vim.keymap.set('n', '<M-P>', ':e $HOME/.config/nvim/plugins.vim<CR>', { noremap = true })
vim.keymap.set('n', 'n', 'nzz', { noremap = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true })


vim.keymap.set('n', '<C-k>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<C-j>', ':bprev<CR>', { noremap = true })

vim.keymap.set('n', '<M-J>', ':term<CR>a', { noremap = true })
vim.keymap.set('n', '<M-B>', ':NERDTreeToggle<CR>', { noremap = true })
vim.keymap.set('t', '<C-b>', '<C-\\><C-n>', { noremap = true })

vim.keymap.set('n', '<M-T>', ':TagbarToggle<CR>', { noremap = true })

vim.api.nvim_set_var('mapleader', ' ')

vim.keymap.set('n', '<leader>nh', ':nohlsearch<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tf', ':TableFormat<CR>', { noremap = true })

vim.keymap.set('n', '<leader>y', '"+y', { noremap = true })
vim.keymap.set('n', '<leader>p', '"+p', { noremap = true })

vim.keymap.set('n', '<leader>k', ':bd<CR>', { noremap = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true })

-- Spelling keys
vim.keymap.set('n', '<leader>ss', ':set spell<CR>:set spelllang=pt_BR<CR>', { noremap = true })
vim.keymap.set('n', '<leader>sc', ':set nospell<CR>', { noremap = true })
vim.keymap.set('n', '<leader>sp', ':set spelllang=pt_br<CR>', { noremap = true })
vim.keymap.set('n', '<leader>se', ':set spelllang=en_US<CR>', { noremap = true })

-- Fzf keys
vim.keymap.set('n', '<leader>e', ':FZF<CR>', { noremap = true })
vim.keymap.set('n', '<leader>cc', ':Colors<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':Buffers<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':Lines<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tt', ':Tags<CR>', { noremap = true })
vim.keymap.set('n', '<leader>rg', ':Rg<CR>', { noremap = true })
vim.keymap.set('n', '<leader>s', ':Snippets<CR>', { noremap = true })
vim.keymap.set('n', '<leader>x', ':Commands<CR>', { noremap = true })
