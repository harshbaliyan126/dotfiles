call plug#begin('~/.local/share/nvim/plugged')
 Plug 'ap/vim-css-color'
 Plug 'tpope/vim-fugitive'
 Plug 'zhou13/vim-easyescape'
 Plug 'scrooloose/nerdTree'
 Plug 'mattn/emmet-vim'
 Plug 'tpope/vim-surround'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovim/nvim-lspconfig'
 Plug 'easymotion/vim-easymotion'
 Plug 'fladson/vim-kitty'
"Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
 Plug 'morhetz/gruvbox'
 Plug 'turbio/bracey.vim'
"Plug 'dracula/vim', { 'as': 'dracula'}
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

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
set nowrap
set showmode!   " hide current mode
set showmatch   " highlight matching brackets
set relativenumber
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
hi User3 ctermfg=black ctermbg=grey
hi User4 ctermfg=black ctermbg=grey
hi User5 ctermfg=black ctermbg=grey
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

" TAB completion in coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


set statusline=
set statusline+=%4*\ %4*%{toupper(g:currentmode[mode()])}
set statusline+=%6*\ %f
set statusline+=\ %6*\ %{&modified?'[+]':''}
set statusline+=\ %=%6*\ %Y
set statusline+=\ %5*\ %v:%l\/%L
set statusline+=\ "

" Compile and Run cpp file
"autocmd vimEnter *.cpp map <F12> :w <CR> :term g++ --std=c++17 -Wall -Wshadow -O2 % -ggdb -o %:r -g -fsanitize=address -fsanitize=undefined -DLOCAL; <CR>
autocmd vimenter *.cpp map <F11> :w <CR> :term g++ -std=c++17 -Wshadow -Wall -O2 % -ggdb -o %:r -Wno-unused-result; if [ -f a.out ]; then ./a.out; rm a.out; fi <CR>
autocmd filetype cpp nnoremap <F12> :!g++ -std=c++17 -Wall -Wshadow % -ggdb -o %:r -g -fsanitize=address -fsanitize=undefined -DLOCAL <CR>
autocmd filetype cpp nnoremap <F8> :!g++ -std=c++17 -Wall -Wshadow -O2 % -ggdb -o %:r -Wno-unused-result <CR>

"autocmd filetype cpp nnoremap<F5> :!g++ % -ggdb -o %:r && ./%:r <CR>
