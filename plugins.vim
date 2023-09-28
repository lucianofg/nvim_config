" Plugins
call plug#begin('~/.local/share/nvim/Plugged')

" Markdonw
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/preservim/vim-markdown'

" LaTeX
Plug 'https://github.com/lervag/vimtex' " To use tex files

" Git plugins
Plug 'https://github.com/tpope/vim-fugitive'     " Using git inside vim :Git
Plug 'https://github.com/junegunn/gv.vim'        " git browser on vim
Plug 'https://github.com/airblade/vim-gitgutter' " Show changes on sign collumn

" LSP and snippets
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'tikhomirov/vim-glsl' " Shader language suport

" Code somethings
Plug 'https://github.com/tpope/vim-sleuth'   " To follow file tab/spaces config
Plug 'https://github.com/tpope/vim-surround' " Create, change and delete surround characters

" User interface
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/preservim/tagbar', { 'on' : 'TagbarToggle' }
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/junegunn/fzf.vim'

"" Colorschemes
Plug 'https://github.com/NLKNguyen/papercolor-theme' "

call plug#end()

let g:vimtex_quickfix_enabled = 0
let g:vim_markdown_folding_disabled = 1

let $FZF_DEFAULT_COMMAND='fdfind --type f -E "*.xz" -E "*.gz" -E "*.zip" -E "*.rar" -E "*.mp4" -E "*.mp3" -E "*.mkv" -E "*.webm" -E "*.ogg" -E "*.flac" -E "*.iso" -E "*.jpg" -E "*.pdf" -E "*.ods" -E "*.odt" -E "*.epub" -E "*.png" -E "*.img" -E "*.avi" -E "*jpeg" -E "*.MP4" -E ".MOV" -E "JPG" -E "m4a"'
let $FZF_DEFAULT_OPTS="--layout reverse"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
