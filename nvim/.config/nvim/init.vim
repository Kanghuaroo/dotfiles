"Vundle Stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'	"ColorsScheme
Plugin 'tpope/vim-fugitive'	"Git-Wrapper
Plugin 'vim-airline/vim-airline'		"Status Line
Plugin 'vim-airline/vim-airline-themes'	"Themes
Plugin 'ap/vim-css-color'	"Color Preview for CSS

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
syntax on			"syntax highlighting
set tabstop=4		"insert 4 spaces whenever the tab key is pressed
set shiftwidth=4	"set indentation to 4 spaces
set autoindent	"start new line at the same indentation level
set so=5	"Set scroll offset

set list lcs=tab:\|\ "adds lines (|) where \t chars are

"move  to start/end of line
nmap B ^
nmap E $
"jk is escape
imap jk <esc>

"searching
set hlsearch

"guvbox
colorscheme gruvbox
set background=dark
