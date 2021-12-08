"Vim Plug Stuff
set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'	"Git-Wrapper
Plug 'vim-airline/vim-airline'		"Status Line
Plug 'vim-airline/vim-airline-themes'	"Themes
Plug 'ap/vim-css-color'	"Color Preview for CSS
Plug 'yuezk/vim-js'	"JS Syntax Highlighting
Plug 'maxmellon/vim-jsx-pretty'	"JSX Syntax Highlighting

"Color Schemes
Plug 'morhetz/gruvbox'	"Comfy Retro
Plug 'srcery-colors/srcery-vim' "Bright Colors


call plug#end()            " required

""""""""""""""""""
" Settings Start "
""""""""""""""""""

filetype plugin indent on
set title
set number
syntax on			"syntax highlighting

set tabstop=8
set softtabstop=8		"insert 8 spaces whenever the tab key is pressed
set shiftwidth=8	"set indentation to 8 spaces
set so=5	"Set scroll offset

set noexpandtab
set autoindent	"start new line at the same indentation level
set list lcs=tab:\|\ "adds lines (|) where \t chars are

"move  to start/end of line
nmap B ^
nmap E $
"jk is escape
imap jk <esc>

"make j and k go to next *visual* line not actual line
nnoremap j gj
nnoremap k gk
" gj and gk can move between lines if needed
nnoremap gj j
nnoremap gk k

"Easier Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Better Split Opening
set splitbelow
set splitright

"searching
set hlsearch

"guvbox
colorscheme gruvbox
set background=dark
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
