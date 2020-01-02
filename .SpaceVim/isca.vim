" Theme settings
syntax on             " enable syntax 
color  PaperColor     " Theme seted on color directory
set laststatus=2
set t_Co=256

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'override' : {
  \         'color00' : ['#080808', '232'],
  \         'linenumber_fg': ['#5fff00', '82'],
  \         'linenumber_bg' : ['#262626', '235'],
  \         'cursorline' : ['#444444', '238']
  \       }
  \     }
  \   }
  \ }

" ---Basic Settings ---

set softtabstop=0
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
highlight ColorColumn ctermbg=171                                                                  
highlight ColorColumn ctermfg=51

set cursorline        " set cursor to be a line
"highlight CursorLine  cterm=NONE ctermbg=233 ctermfg=28 guibg=darkred guifg=#00ffff
highlight CursorLine  ctermbg=233 
highlight CursorLineNR ctermfg=87 ctermbg=237

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
filetype plugin indent on


" --- Custom Plugins Settings ---

" --- IndenLine Helpers ---
"
"let g:indentLine_color_term = 239
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_char
"
"
" --- Airline Helpers ---
let g:airline_theme='simple'
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

" --- YouCompleteme ---
let g:ycm_autoclose_preview_window_after_completion = 1 "autoclose window preview

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

"include vim go preferences
source ~/.vim/confs/vimgo
"source ~/.vim/confs/font
