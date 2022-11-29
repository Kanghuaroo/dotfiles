call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'	"Git-Wrapper
Plug 'vim-airline/vim-airline'		"Status Line
Plug 'vim-airline/vim-airline-themes'	"Themes
Plug 'yuezk/vim-js'	"JS Syntax Highlighting
Plug 'maxmellon/vim-jsx-pretty'	"JSX Syntax Highlighting
Plug 'christoomey/vim-tmux-navigator'	"tmux and vim sync
Plug 'junegunn/goyo.vim'	"Distraction-free Writing
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	"Fuzzy Finder
Plug 'junegunn/fzf.vim'	"FZF vim intergration

"Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"VSCode Intelligent Autocomplete
Plug 'OmniSharp/omnisharp-vim'	"C# completion
Plug 'davisdude/vim-love-docs' 	"LOVE2D api

"NERDTree
Plug 'preservim/nerdtree'	"File System Explorer
Plug 'Xuyuanp/nerdtree-git-plugin'	"Shows git status on NERDTree
Plug 'ryanoasis/vim-devicons'	"Icons for Plugins

"Color Schemes
Plug 'morhetz/gruvbox'	"Comfy Retro
Plug 'srcery-colors/srcery-vim' "Bright Colors
Plug 'danilo-augusto/vim-afterglow'

call plug#end()            " required

""""""""""""""""""
" Settings Start "
""""""""""""""""""

let mapleader = ','	"Sets a leader key
set number
set relativenumber
syntax on			"syntax highlighting
set tabstop=8		"insert 4 spaces whenever the tab key is pressed
set shiftwidth=8	"set indentation to 4 spaces
set autoindent	"start new line at the same indentation level
set so=5	"Set scroll offset
set cursorline	"Highlights current line
set list lcs=tab:\|\ "adds lines (\|) where \t chars are
set splitbelow	"\:sp opens pane below
set splitright	"\:vsp opens pane right
set hlsearch	"searching

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

"guvbox
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
colorscheme gruvbox
set background=dark

"Coc Settings
let g:coc_global_extensions = [
	\ 'coc-cmake', 
	\ 'coc-jedi', 
	\ 'coc-java',
	\ 'coc-omnisharp'
	\ ]
set cmdheight=2	"Better Display for messages
set updatetime=300	"Better diagnostic messages
let g:python3_host_prog = '/usr/bin/python3'

"NERDTree
nmap <leader>n :NERDTreeToggle<CR>

"OmniSharp
let g:OmniSharp_start_without_solution=1
let g:OmniSharp_server_use_mono=1

"<Tab> 
"" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

