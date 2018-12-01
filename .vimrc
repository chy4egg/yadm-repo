" auto reload .vimrc when changed, this avoids reopening vim
autocmd! bufwritepost .vimrc source %
set nocompatible              " be iMproved, required
filetype on                   " required
set path+=**

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins to be managed by Vundle
" ----------------------------------------------------------
" Plugin 'vim-syntastic/syntastic'
Plugin 'garbas/vim-snipmate'
Plugin 'pangloss/vim-javascript'
Plugin 'edkolev/promptline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'suan/vim-instant-markdown'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'MatlabFilesEdition'
Plugin 'chriskempson/base16-vim'
Plugin 'mileszs/ack.vim'
Plugin 'posva/vim-vue'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'sickill/vim-pasta'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/ZoomWin'
" ------------------------------------------------------------
"
" All of your Plugins must be added before the following line
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

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" commenting
set comments=sl:/*,mb:\ *,elx:\ */
set wildmode=longest:full
set wildmenu
set t_Co=256

syntax on

"tabs and spaces
set shiftwidth=2	"1 tab == 2 spaces
set tabstop=2		"<TAB> == 2 spaces
set softtabstop=2	"<TAB> and backspace
set smarttab		"smart tab
set autoindent		"set auto indent
set smartindent		"set smart indent
set copyindent		"use exisiting indents for new indents
set preserveindent	"save as much indent structure as possible
"UI Config set number			"line number
set showmatch		"highlight matching [({})]
set mat=2			"for showmatch, set how many tenth of second it blinks
set ruler			"show current position
set magic			"magic for regular expression
set confirm			"ask to save file
set showcmd			"display incomplete command in the lower right corner of the console
set undolevels=1000	"let vim allow 1000 undos
set textwidth=80
" do not work in hammer. Uncomment for those not on hammer server
set colorcolumn=120
highlight ColorColumn ctermbg=236

"Searching
set incsearch			   "search as char are entered
set hlsearch			   "highlight matches
set smartcase			   "smart with case search

"Folding
set foldenable	      "enable folds
set foldlevelstart=10 "prevent too many folds
set foldmethod=indent "set fold based on indentation
"can also be marker, manual, expr, syntax, or diff
"check :help for more information

"Movement
set mouse=a				     "mouse support in console (option + mouseclick for mac users)
set mousehide				 "hide cursor when typing
set scrolloff=5		         "minimum lines to keep above and below
" set ttymouse=xterm2

"instant markdown
filetype plugin on          "required

"rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" statusline
set laststatus=2

" airline UI
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" separators
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline#extensions#tabline#right_alt_sep = '◀'
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '◀'
"let g:airline_symbols.branch = '▶'
"let g:airline_symbols.readonly = '▶'
"let g:airline_symbols.linenr = '▶'

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode',' ','branch'])
	let g:airline_section_b = airline#section#create_left(['%F'])
	let g:airline_section_c = airline#section#create(['ffenc',' ','[%Y]'])
	let g:airline_section_x = airline#section#create(['%P'])   "P
	let g:airline_section_y = airline#section#create(['row:%l/%L ','(%03p%%)'])
	let g:airline_section_z = airline#section#create_right(['col:%03c'])
endfunction
autocmd VimEnter * call AirlineInit()

"NERDTree
" autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize=50
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
"map <C-n> :NERDTreeToggle<CR>

" vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown    " *.md support

"spelling
"map <C-a> :set spell! <CR>
:nnoremap <C-a> :set spell!<CR>
"remap the leader
let mapleader = ","

" automatic Whitespace removal
autocmd VimEnter,BufReadPost,bufwritepost,bufenter * :FixWhitespace


" set default terminal background color
set background=dark
" set the colorscheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

"pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"PERSONAL SETTINGS
"the backspace bug fix
set backspace=indent,eol,start
"autocomplite :e
set wildmode=full
"exclusions:
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*.pyc,/node_nodules/**,node_modules,node_modules/**/*.*,tmp/**
set wildignore+=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=*/min/*,*/vendor/*,*/node_modules/*,*/bower_components/*,*/temp/*,*/logs/*,*/build/*
set wildignore+=tags,cscope.*
set wildignore+=*.tar.*
set wildignorecase
set wildmode=full

"nerd tree settings
noremap <Leader>n :NERDTreeFind<CR>
noremap <Leader>m :NERDTreeToggle<CR>
"key bindings
noremap <Leader><space> :noh<CR>

augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO', -1)
augroup END

"fuzzy finder config
" If installed using git
set rtp+=~/.fzf
" :nnoremap <Leader>t :GFiles<CR>
:nnoremap <Leader>t :Files<CR>

"change the default searcher to the silver searcher
if executable('ag')
    let g:ackprg = 'ag -i --ignore-case --nogroup --nocolor --column'
endif
" map <Leader>a :Ack<Space>
map <Leader>a :tab split<CR>:Ack '
map <Leader>A :tab split<CR>:Ack '

"Vue.js support
autocmd FileType vue syntax sync fromstart

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"WIM-PLUG
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" custom filetypes
autocmd BufRead,BufNewFile *.mvue set filetype=vue
autocmd BufRead,BufNewFile *.twig set filetype=html

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

"Filetypes settings:
set tabstop=2
set shiftwidth=2
set expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2

"set clipboard to unnamed
"for macos
set clipboard=unnamed
"for linux:
"set clipboard=unnamedplus
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+b
noremap <Leader>P "+p

" Ctrlsf remap
nnoremap <Leader>ss :CtrlSF '
nnoremap <Leader>st :CtrlSFToggle<CR>

nnoremap <Leader>5 :vertical resize 50<CR>

"Set the line numbers
set number

" a shortcut for replace all matches in a file
nnoremap <Leader>r :%s/

"tabs mapping
nnoremap tp       :tabprevious<CR>
nnoremap tn       :tabnext<CR>
nnoremap tt       :tabnew<CR>
nnoremap tc       :tabclose<CR>

"remapping default space
nnoremap <Space> A
