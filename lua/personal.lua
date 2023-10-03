-- General settings
vim.o.title = true
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
vim.api.nvim_exec([[
autocmd TermClose * call feedkeys("j")
]], false)
