" set leader to <SPACE>
let mapleader =" "

" plugged
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
" on-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" wakatime
Plug 'wakatime/vim-wakatime'
call plug#end()

" basics
set bg=dark
filetype plugin on
syntax on
set clipboard+=unnamedplus

" Enable autocompletion:
set wildmode=longest,list,full

" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>
" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
