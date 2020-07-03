call plug#begin('~/.local/share/nvim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdTree'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
call plug#end()
" Config Section
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
nmap <C-n> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key = '<C-a>,'
map <Leader> <Plug>(easymotion-prefix)
set number
syntax on
packloadall  
silent! helptags ALL

