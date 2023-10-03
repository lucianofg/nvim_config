vim.env.FZF_DEFAULT_COMMAND = [[
    fdfind --type f -E "*.xz" -E "*.gz" -E "*.zip" -E "*.rar" -E "*.mp4"
    -E "*.mp3" -E "*.mkv" -E "*.webm" -E "*.ogg" -E "*.flac" -E "*.iso"
    -E "*.jpg" -E "*.pdf" -E "*.ods" -E "*.odt" -E "*.epub" -E "*.png"
    -E "*.img" -E "*.avi" -E "*jpeg" -E "*.MP4" -E ".MOV" -E "JPG" -E "m4a"
]]
vim.env.FZF_DEFAULT_OPTS = "--layout reverse"

-- Fzf keys
vim.keymap.set('n', '<leader>e', ':FZF<CR>', { noremap = true })
vim.keymap.set('n', '<leader>cc', ':Colors<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':Buffers<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':Lines<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tt', ':Tags<CR>', { noremap = true })
vim.keymap.set('n', '<leader>rg', ':Rg<CR>', { noremap = true })
vim.keymap.set('n', '<leader>s', ':Snippets<CR>', { noremap = true })
vim.keymap.set('n', '<leader>x', ':Commands<CR>', { noremap = true })
