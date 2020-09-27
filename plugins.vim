" Plugins
call plug#begin('~/.local/share/nvim/Plugged')
Plug 'https://github.com/rhysd/vim-grammarous'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/norcalli/nvim-colorizer.lua'
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/junegunn/gv.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/rust-lang/rust.vim'

" Colorschemes
Plug 'https://github.com/crusoexia/vim-monokai'
Plug 'https://github.com/NLKNguyen/papercolor-theme'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/lifepillar/vim-solarized8'
Plug 'https://github.com/GertjanReynaert/cobalt2-vim-theme'
call plug#end()


" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#ignore_bufadd_pat='!|defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'

" Setting up colorizer plugin
lua require'colorizer'.setup()

let $FZF_DEFAULT_COMMAND='fdfind --type f -E "*.xz" -E "*.gz" -E "*.zip" -E "*.rar" -E "*.mp4" -E "*.mp3" -E "*.mkv" -E "*.webm" -E "*.ogg" -E "*.flac" -E "*.iso" -E "*.jpg" -E "*.pdf" -E "*.ods" -E "*.odt" -E "*.epub" -E "*.png" -E "*.img" -E "*.avi"'
let $FZF_DEFAULT_OPTS="--layout reverse"
"
" " Open FZF on a floating window
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
"   let width = float2nr(&columns - (&columns * 2 / 10))
"   let height = &lines - 3
  let height = float2nr(&lines - 4)
  let width = float2nr(&columns - (&columns * 1 / 10))
  let y = 1 " &lines - 3
  let x = float2nr((&columns - width) / 2)
  let opts = {
        \ 'relative': 'editor',
        \ 'row': y,
        \ 'col': x,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
  call nvim_open_win(buf, v:true, opts)
endfunction


let g:gitgutter_preview_win_floating = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
