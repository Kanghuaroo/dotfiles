call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'	"Git-Wrapper
Plug 'vim-airline/vim-airline'		"Status Line
Plug 'vim-airline/vim-airline-themes'	"Themes
Plug 'ap/vim-css-color'	"Color Preview for CSS
Plug 'yuezk/vim-js'	"JS Syntax Highlighting
Plug 'maxmellon/vim-jsx-pretty'	"JSX Syntax Highlighting
Plug 'vim-syntastic/syntastic'	"Syntax Checker
Plug 'christoomey/vim-tmux-navigator'	"tmux and vim sync
Plug 'junegunn/goyo.vim'	"Distraction-free Writing

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	"Fuzzy Finder
Plug 'junegunn/fzf.vim'	"FZF vim intergration

"Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"VSCode Intelligent Autocomplete
Plug 'OmniSharp/omnisharp-vim'	"C# completion

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
syntax on			"syntax highlighting
set tabstop=4		"insert 4 spaces whenever the tab key is pressed
set shiftwidth=4	"set indentation to 4 spaces
set autoindent	"start new line at the same indentation level
set so=5	"Set scroll offset

set list lcs=tab:\|\ "adds lines (\|) where \t chars are

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

"Sysntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Coc Settings
let g:coc_global_extensions = [
	\ 'coc-discord-rpc', 
	\ 'coc-cmake', 
	\ 'coc-python', 
	\ 'coc-java',
	\ 'coc-omnisharp'
	\ ]
set cmdheight=2	"Better Display for messages
set updatetime=300	"Better diagnostic messages

"NERDTree
nmap <leader>n :NERDTreeToggle<CR>

"OmniSharp
let g:OmniSharp_start_without_solution=1
let g:OmniSharp_server_use_mono=1
