set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim"
call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'yggdroot/indentline'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'w0ng/vim-hybrid'

syntax enable

"For splitting of windows
set splitbelow
set splitright
"Maps keys for easier traversing of windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Color schemes
set background=dark
colorscheme hybrid
let g:hybrid_reduced_contrast = 1

"Powerline
let g:javascript_plugin_jsdoc = 1
set foldmethod=syntax
set number

let g:airline_powerline_fonts = 1

"Syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Create a binding for nerdree
map <C-n> :NERDTreeToggle<CR>

set wildmode=list:full

call vundle#end()
