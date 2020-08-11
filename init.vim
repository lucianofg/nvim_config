set title
set number
set hidden 
set mouse=a
set scroll=10

set splitbelow
set splitright

set ignorecase
set smartcase
set hlsearch

set termguicolors
set signcolumn=yes
set inccommand=nosplit

set nobackup
set nowritebackup
set updatetime=300

set shortmess+=c " don't give |ins-completion-menu| messages.

filetype plugin indent on

au TermClose * call feedkeys("j")

so $HOME/.config/nvim/plugins.vim
so $HOME/.config/nvim/coc.vim
so $HOME/.config/nvim/keys.vim
