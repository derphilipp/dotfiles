filetype plugin indent on
color delek
syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'davidhalter/jedi-vim'
"Bundle 'vim-orgmode'
Bundle 'jceb/vim-orgmode.git'
Bundle 'vim-scripts/vimwiki.git'
Bundle 'Lokaltog/vim-powerline.git'


set nocompatible

set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set tabstop=4    " Set the default tabstop
set softtabstop=4
set shiftwidth=4 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels

set nowrap
set textwidth=0		" Don't wrap lines by default
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set backspace=indent,eol,start	" more powerful backspacing

set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set autowrite  " Writes on make/shell commands
set autoread  
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

set pastetoggle=<F10> "  toggle between paste and normal: for 'safer' pasting from keyboard
set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags

set number
set mouse=a

set list
set list listchars=tab:▸\ ,trail:⋅,nbsp:⋅

set clipboard=unnamed

"#source $HOME/.vim/python.vim
