""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vundler for plugin management
""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERD tree - tree explorer
Plugin 'scrooloose/nerdtree'

" Base16 colorschemes
Plugin 'chriskempson/base16-vim'

" Ctrl-p
Plugin 'kien/ctrlp.vim'

Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'tpope/vim-fugitive'

Plugin 'benmills/vimux' " tmux integration for vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'


" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W#F'],
      \'y'    : ['%R', '%D', '%a'],
      \'z'    : '#h'}
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

let base16colorspace=256

source ~/.vimrc_background

set nocp
set nobackup
syntax on

set colorcolumn=85
set wrap
"set textwidth=79

set list
set listchars=tab:»_,eol:¬,trail:¤

set rnu

set et
set ts=4
set sw=4

set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

nmap <LEADER>n :NERDTreeToggle<CR>
vmap <LEADER>c :w !xsel -i<CR><CR>
nmap <LEADER>p :r !xsel -o<CR>

set guifont=Terminus:h16
set noantialias

let g:ctrlp_custom_ignore = '\v[\/](build|node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_max_files = 0

set laststatus=2 " show status line all the time
set mouse=nv
set ttymouse=xterm2 " enable mouse for resize window

