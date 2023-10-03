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

-- Plugins configuration
vim.g.vimtex_quickfix_enabled = 0
vim.g.vim_markdown_folding_disabled = 1

vim.env.FZF_DEFAULT_COMMAND =
'fdfind --type f -E "*.xz" -E "*.gz" -E "*.zip" -E "*.rar" -E "*.mp4" -E "*.mp3" -E "*.mkv" -E "*.webm" -E "*.ogg" -E "*.flac" -E "*.iso" -E "*.jpg" -E "*.pdf" -E "*.ods" -E "*.odt" -E "*.epub" -E "*.png" -E "*.img" -E "*.avi" -E "*jpeg" -E "*.MP4" -E ".MOV" -E "JPG" -E "m4a"'
vim.env.FZF_DEFAULT_OPTS = "--layout reverse"