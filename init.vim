set title
set hidden
set mouse=a

set signcolumn=yes
set textwidth=72

" Set for performance reasons when opening a file with large lines
set synmaxcol=160
set termguicolors

set wrap
set showbreak=+++
set linebreak
set list
set updatetime=300

set splitbelow
set splitright

" search config
set ignorecase
set smartcase
set hlsearch

" tab config
set tabstop=4
set shiftwidth=4
set expandtab

au TermClose * call feedkeys("j")

so $HOME/.config/nvim/plugins.vim
so $HOME/.config/nvim/keys.vim
so $HOME/.config/nvim/coc.vim

colorscheme PaperColor
