set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

call plug#end()

filetype plugin indent on
syntax on

set ruler
set number

let NERDTreeIgnore = ['\.o$', '\~$']
let g:NERDSpaceDelims = 1

map <silent> <C-n> :NERDTreeToggle<CR>
nmap <Leader>r :NERDTreeRefreshRoot<CR>
