" Keybidings
nmap n nzz
nmap N Nzz

nmap <C-k> :bnext<CR>
nmap <C-j> :bprev<CR>

map <M-B> :NERDTreeToggle<CR>r 
noremap <M-!> :!
noremap <M-J> :term<CR>a

" C-b to get out of terminal mode
tnoremap <C-b> <C-\><C-n>

let mapleader = " "

map <leader>nh :nohlsearch<CR>

map <leader>tb :TagbarToggle<CR>
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

nmap ]g <Plug>(GitGutterNextHunk)
nmap [g <Plug>(GitGutterPrevHunk)

" Coc Keys
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>fc  <Plug>(coc-fix-current)

nmap <silent> <M-i> <Plug>(coc-range-select)
xmap <silent> <M-i> <Plug>(coc-range-select)
xmap <silent> <M-o> <Plug>(coc-range-select-backword)

" CocList 
nnoremap <silent> \a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> \e  :<C-u>CocList extensions<cr>
nnoremap <silent> \c  :<C-u>CocList commands<cr>
nnoremap <silent> \o  :<C-u>CocList outline<cr>
nnoremap <silent> \s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> \m  :<C-u>CocList marketplace<cr>
nnoremap <silent> \j  :<C-u>CocNext<CR>
nnoremap <silent> \k  :<C-u>CocPrev<CR>
nnoremap <silent> \p  :<C-u>CocListResume<CR>
