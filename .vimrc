" ---Basic Settings ---
syntax on             " enable syntax 
colorscheme dracula   " use this color theme
set tabstop=2         " set tabs for only two blocks
set shiftwidth=2      " set ident tabs for two blocks also
set expandtab         " convert tabs to spaces
"set autoindent       " autoindent without filetype plugin
set bg=dark           " default theme for black screens
set number            " enable numbers
"set ignorecase        " ignore case on searchs
set smartcase         " search insensitive cases but switch if use Upper case eg: ZaA
"set textwidth=80      " set lines to autowrapp at 80 characters
"set formatoptions+=t  
set colorcolumn=100    " show a column at 100 charcacters as a rule
"highlight ColorColumn ctermbg=magenta
highlight Comment guifg=grey ctermfg=grey





"--- Advanced plugins settings ---
set nocompatible      " be iMproved, required by vundle
"filetype off          " disable filetype when use vundle plugins

" --- Indent Helpers ---
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:× "show indent lines and space dots
"set list listchars=trail:·
":match Search /\%(\_^\s*\)\@<=\%(\%1v\|\%5v\|\%9v\)\s/
"set list listchars=tab:»-,trail:·,extends:»,precedes:«
"set listchars=trail:.,eol:¬,tab:→→,extends:>,precedes:<
"set listchars=tab:>\ ,eol=$,trail=-

" --- Powerline Settings ---
"set rtp+=~/.local/lib/python3.5/site-packages/powerline/bindings/vim
"filetype plugin on
"filetype indent on
"filetype plugin indent on
"au FileType php setl ofu=phpcomplete#CompletePHP
"au FileType ruby,eruby setl ofu=rubycomplete#Complete
"au FileType python setl ofu=pythoncomplete#Complete
"au FileType bash,sh,zsh setl ofu=shcomplete#Complete
"au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
"au FileType c setl ofu=ccomplete#CompleteCpp
"au FileType css setl ofu=csscomplete#CompleteCSS


"--- Pathogen Plugin Manager ---
execute pathogen#infect()
"call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on


" --- Custom Plugins Settings ---
"packadd! $HOME/.vim/bundle/dracula

" --- IndenLine Helpers ---
"
"let g:indentLine_color_term = 239
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_char
"
"
" --- Airline Helpers ---
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" --- NERDTree Helpers ---
"auto open nerdtree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"let NERDTreeShowHidden=1  "use shift + i to toggle hidden view
let NERDTreeShowBookmarks=1 "use shift + b to toggle bookmarks

" --- maps ---
"Toggle Open/Close NERDTree with F7
"New tabs with shift+t
"Tab close with shift+x
nmap <F7> :NERDTreeToggle <CR>
nmap <F8> :NERDTree <CR>
nmap <silent> <S-t> :tabnew <CR> 
nmap <silent> <S-x> :tabc <CR>
"Map Shortcuts for window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"nmap <silent> <C-Up> :wincmd k<CR>
"nmap <silent> <C-Down> :wincmd j<CR>
"nmap <silent> <C-Left> :wincmd h<CR>
"nmap <silent> <C-Right> :wincmd l<CR>
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_

" --- Custom funcions ---
"Do not use airline without gui
"if ! has("gui_running")
"  let g:loaded_airline = 1
"endif

"hi Conceal guibg=NONE ctermbg=NONE ctermfg=DarkGrey
"autocmd BufWinEnter * setl conceallevel=2 concealcursor=nv
"autocmd BufWinEnter * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·
"autocmd BufReadPre * setl conceallevel=2 concealcursor=nv
"autocmd BufReadPre * syn match LeadingSpace /\(^ *\)\@<= / containedin=ALL conceal cchar=·
