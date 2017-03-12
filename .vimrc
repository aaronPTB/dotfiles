set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim"
call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'
"Functionality
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'yggdroot/indentline'
"Color schemes
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'w0ng/vim-hybrid'
Plugin 'altercation/vim-colors-solarized'
"Syntax Highlighting
Plugin 'justinmk/vim-syntax-extra'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'hdima/python-syntax'
"Indenting
Plugin 'hynek/vim-python-pep8-indent'

syntax enable

"For splitting of windows
set splitbelow
set splitright
set tabstop=8     
set expandtab     
set shiftwidth=4  
set autoindent    
set smartindent   
set cindent       

"Maps keys for easier traversing of windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Exiting terminal more easily
tnoremap <Esc> <C-\><C-n>

"Color schemes

if has("termguicolors")
set termguicolors
endif
colorscheme hybrid
set background=dark
"let g:hybrid_reduced_contrast = 1

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
