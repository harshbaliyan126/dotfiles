call plug#begin('~/.local/share/nvim/plugged')
 Plug 'tpope/vim-fugitive'
 Plug 'davidhalter/jedi-vim'
 Plug 'zhou13/vim-easyescape'
 Plug 'valloric/youcompleteme'
 Plug 'scrooloose/nerdTree'
 Plug 'mattn/emmet-vim'
"Plug 'tpope/vim-surround'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'easymotion/vim-easymotion'
"Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'morhetz/gruvbox'
 Plug 'turbio/bracey.vim'
"Plug 'dracula/vim', { 'as': 'dracula'}
call plug#end()

" Config Section
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
nmap <C-n> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key = ',,'
map <Leader> <Plug>(easymotion-prefix)
imap jj <Esc>
packloadall
silent! helptags ALL
highlight LineNr ctermfg=yellow
syntax on   " syntax highlighting
set wildmenu    " autocompletion for commandmenu
set number  " line number set tabstop=4 " four spaces tab set expandtab   " convert tabs to spaces
set shiftwidth=4    " indents of four spaces
set softtabstop=4   " backspace will remove tabs instead of space
set wrap    " wrap lines
set showmode!   " hide current mode
set showmatch   " highlight matching brackets
set incsearch " search as characters are entered
set ignorecase  " case insensitive search
set smartcase   " case sensitive when uppercase
set laststatus=2    " Always display the status line
set noswapfile  " swap files won't be created
set nobackup    " no backup
set undofile
set autoindent
set smartindent
" enable tabline
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" Switch to your current theme
"let g:airline_theme = 'base16_gruvbox_dark_hard'
"disable automatic comments on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" remove all whitespace and newlines at end of file on save

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

"statusline

hi User1 ctermfg=black ctermbg=green
hi User2 ctermfg=black ctermbg=blue
hi User3 ctermfg=black ctermbg=yellow
hi User4 ctermfg=black ctermbg=yellow
hi User5 ctermfg=black ctermbg=yellow
hi User6 ctermfg=none ctermbg=black

let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'v'  : 'VISUAL ',
    \ 'V'  : 'V·Line ',
    \ '' : 'V·Block ',
    \ 'i'  : 'INSERT ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V·Replace ',
    \ 'c'  : 'Command ',
    \}

set statusline=
set statusline+=%4*\ %4*%{toupper(g:currentmode[mode()])}
set statusline+=%6*\ %f
set statusline+=\ %6*\ %{&modified?'[+]':''}
set statusline+=\ %=%6*\ %Y
set statusline+=\ %5*\ %v:%l\/%L
set statusline+=\ "
