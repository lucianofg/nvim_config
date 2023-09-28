" Keybidings

" Toggle Light/Dark mode 
function LightDarkModeToggle()
  if &background == 'light'
    set background=dark
  else
    set background=light
  endif
endfunction

nnoremap <silent> <M-l> :call LightDarkModeToggle()<CR>

nmap <M-C> :e $HOME/.config/nvim/init.vim<CR>
nmap <M-P> :e $HOME/.config/nvim/plugins.vim<CR>
nmap n nzz
nmap N Nzz

nmap <C-k> :bnext<CR>
nmap <C-j> :bprev<CR>

noremap <M-J> :term<CR>a
noremap <M-B> :NERDTreeToggle<CR>
" C-b to get out of terminal mode
tnoremap <C-b> <C-\><C-n>

noremap <M-T> :TagbarToggle<CR>

let mapleader = " "

map <leader>nh :nohlsearch<CR>
map <leader>tf :TableFormat<CR>

map <leader>y "+y
map <leader>p "+p

map <leader>k :bd<CR>
map <leader>w :w<CR>

" Spelling keys
map <leader>ss :set spell<CR>:set spelllang=pt_BR<CR>
map <leader>sc :set nospell<CR>
map <leader>sp :set spelllang=pt_br<CR>
map <leader>se :set spelllang=en_US<CR>

" Fzf keys
map <leader>e  :FZF<CR>
map <leader>cc :Colors<CR>
map <leader>b  :Buffers<CR>
map <leader>l  :Lines<CR>
map <leader>tt :Tags<CR>
map <leader>rg :Rg<CR>
map <leader>s  :Snippets<CR>
map <leader>x  :Commands<CR>
