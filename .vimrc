" file type and syntax highliting on
filetype plugin indent on
syntax on

set expandtab
set softtabstop=4
set tabstop=4
set cursorline
set shiftwidth=4
set hlsearch
set autoindent

" close brackets
:inoremap ( ()<Esc>i
:inoremap < <><Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap ` ``<Esc>i

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
call plug#end()
