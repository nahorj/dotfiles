" To Download and vim-plug if not installled
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tomasr/molokai'
Plug 'lyuts/vim-rtags'
call plug#end()

" Specific Flags
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:rehash256 = 1
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark = "hard"

" Vim conf
set shortmess+=I
set nocompatible
syntax on
set backspace=indent,eol,start
set laststatus=2
set noerrorbells
colorscheme gruvbox 
set number 
set number
set tabstop=2 
set shiftwidth=2
set expandtab 
set ignorecase
set smarttab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set mouse+=a
set background=dark
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=darkgrey
set wildmenu
set wildmode=longest:full,full

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
