
" set leader to <SPACE>
let mapleader =" "

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
