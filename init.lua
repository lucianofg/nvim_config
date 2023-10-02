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

-- Package manager configuration
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- LSP configuration
require("lazy").setup({
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'L3MON4D3/LuaSnip' },
    -- LSP Zero
    { 'VonHeikemen/lsp-zero.nvim',                    branch = 'v2.x' },

    -- Colorschemes
    { "folke/tokyonight.nvim",                        lazy = false,   priority = 1000, opts = {} },
    { 'https://github.com/godlygeek/tabular' },
    { 'https://github.com/preservim/vim-markdown' },

    -- LaTeX
    { 'https://github.com/lervag/vimtex' },

    -- Git plugins
    { 'https://github.com/tpope/vim-fugitive' },
    { 'https://github.com/junegunn/gv.vim' },
    { 'https://github.com/airblade/vim-gitgutter' },


    -- Code somethings
    { 'https://github.com/jiangmiao/auto-pairs' },
    { 'tikhomirov/vim-glsl' },
    { 'https://github.com/tpope/vim-sleuth' },
    { 'https://github.com/tpope/vim-surround' },

    -- User interface
    { 'https://github.com/preservim/nerdtree' },
    { 'https://github.com/preservim/tagbar' },
    { 'https://github.com/junegunn/fzf' },
    { 'https://github.com/junegunn/fzf.vim' },

    -- Colorschemes
    { 'https://github.com/NLKNguyen/papercolor-theme' },
})

local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup_servers({ 'clangd', 'pylsp', })


local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})


lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>sw", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

---- Source configuration files
vim.cmd('source $HOME/.config/nvim/keys.vim')

---- Set colorscheme
vim.o.background = 'light'
vim.cmd('colorscheme PaperColor')
