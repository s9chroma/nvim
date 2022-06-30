" Map Leader temporarily for the following keybinds
let mapleader=" "

" Rebind escape
inoremap jk <ESC>
tnoremap jk <C-\><C-n>

" Delete to Esc from (almost) all the things
nnoremap <Del> <Esc>
vnoremap <Del> <Esc>gV
onoremap <Del> <Esc>
cnoremap <Del> <C-C><Esc>
inoremap <Del> <Esc>`^
tnoremap <Del> <C-\><C-n>

" Paste the last thing yanked, not deleted
nmap <Leader>p "0p
nmap <Leader>P "0P

" Keymap to insert timestamp with prompt
nnoremap <F3> "=strftime("%d-%b %Y %H:%M:%S, %a : ")<CR>P
inoremap <F3> <C-R>=strftime("%H:%M:%S")<CR>

" Keymap to insert timestamp with prompt
nnoremap <F4> "=strftime("%H:%M:%S")<CR>P
inoremap <F4> <C-R>=strftime("%H:%M:%S")<CR>

" Keymap to insert timestamp with prompt
nnoremap <F5> "=strftime("%H:%M:%S : ")<CR>P
inoremap <F5> <C-R>=strftime("%H:%M:%S : ")<CR>

" Splits
set splitbelow
set splitright
set fillchars+=vert:\ ,eob:\ 
map <Leader>v :vsp<CR>
map <Leader>h :sp<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-down> <C-w><
nnoremap <C-up> <C-w>>
nnoremap <M-,> <C-w>R
nnoremap <Leader>0 <C-W>\|
nnoremap <Leader>- <C-W>_
nnoremap <Leader>= <C-W>=

" Tabs
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
nnoremap <Leader>T <C-W>T
nnoremap <C-right> :tabnext<CR><CR>
nnoremap <C-left> :tabprevious<CR><CR>
nnoremap <leader>m :tab 
nnoremap <leader>n :tabnew<CR>

" Keybinds
nnoremap <Leader>rc :e $MYVIMRC<CR>
nnoremap <Leader>Rc :tabe $MYVIMRC<CR>
nnoremap <Leader>rv :source $MYVIMRC<CR>
nnoremap <Leader>w :up<CR>
nnoremap <Leader>q :q<CR>
nnoremap <silent> <Leader>db :bd<CR>
nnoremap <Leader>e :!start explorer /select,%:p<CR><CR>
nnoremap <Leader>c zz
nnoremap gF <C-W>gf

"""  FZF Keybinds
nnoremap <silent> <Leader>F :Files! ~<CR>
nnoremap <silent> <Leader>f :Files %:p:h<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>a :Ag<CR>

""" Fern Keybinds 
" Fern buffer keybinds on fern-config.vim
nnoremap <silent> <Leader>t :Fern . -drawer -right -reveal=% -toggle -width=35<CR><C-w>=

"""  Fugitive Keybinds
" fugitive git bindings
nnoremap <Leader>ga :Git add *<CR>
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gc :Git commit<CR>
nnoremap <Leader>gp :Git push<CR>

"""  Coc Keybinds
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
inoremap <S-tab> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd :vsp<CR><Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>A  :<C-u>CocList diagnostics<cr>

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Applying codeaction to the specified region
xmap <S-CR> <Plug>(coc-codeaction)
nmap <S-CR> <Plug>(coc-codeaction)
xmap <M-CR> <Plug>(coc-codeaction-line)
nmap <M-CR> <Plug>(coc-codeaction-line)
xmap <C-CR> <Plug>(coc-codeaction-selected)
nmap <C-CR> <Plug>(coc-codeaction-selected)

" Remap leader to comma for vimwiki
let mapleader=","
