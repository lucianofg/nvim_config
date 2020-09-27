set title
set hidden 
set mouse=a

set splitbelow
set splitright

set ignorecase
set smartcase
set hlsearch

set termguicolors
set colorcolumn=80
set signcolumn=yes
set inccommand=nosplit

set nobackup
set nowritebackup
set updatetime=300

set shortmess+=c " don't give |ins-completion-menu| messages.

set tabstop=4
set shiftwidth=4
set expandtab

set textwidth=80

au TermClose * call feedkeys("j")

so $HOME/.config/nvim/plugins.vim
so $HOME/.config/nvim/coc.vim
so $HOME/.config/nvim/keys.vim

set background=light
colorscheme gruvbox
let g:airline_theme='monochrome'
filetype plugin indent on
