
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
nmap <leader>ff :Format<CR>

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

let g:coc_snippet_next = '<M-i>'

" Coc Keys
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

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
