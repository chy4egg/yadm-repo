:set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype on                   " required
set path+=**
set autoread
let mapleader = ","
:nnoremap ; :
:nnoremap <F2> :cp<CR>
:nnoremap <F3> :cn<CR>

"vim-plug
call plug#begin('~/.vim/plugged')
" Base
Plug 'garbas/vim-snipmate'
Plug 'edkolev/promptline.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'suan/vim-instant-markdown'
Plug 'bronson/vim-trailing-whitespace'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'sickill/vim-pasta'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/ZoomWin'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'chriskempson/base16-vim'
" Frontend
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
" Other
Plug 'w0rp/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

" gutentags settings
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

" side-search settigs
"
" How should we execute the search?
" let g:side_search_prg = 'ag -i --ignore-case --nogroup --column --path-to-ignore ~/.ignore'
      " \. " --heading --stats -B 1 -A 4'"
"
"     " Can use `vnew` or `new`
"     let g:side_search_splitter = 'vnew'
"
"     " I like 40% splits, change it if you don't
"     let g:side_search_split_pct = 0.4

" Highlight ES6 template strings
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

" ALE plugin settings
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" Fix files with prettier, and then ESLint.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier','eslint'],
\   'ts': ['prettier','eslint', 'tsserver'],
\   'vue': ['prettier','eslint'],
\}
" comment this if your project has it's own eslint config
let g:ale_javascript_eslint_use_global = 0

" mappings
map <Leader>al :ALELint<CR>
map <Leader>af :ALEFix<CR>
map <Leader>at :ALEToggle<CR>

"tagbar plugin settings
nmap <F4> :TagbarToggle<CR>

"vim-vue config
let g:vue_disable_pre_processors=1

filetype plugin indent on    " required
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set timeoutlen=1000 ttimeoutlen=0
" commenting
set comments=sl:/*,mb:\ *,elx:\ */
set wildmode=longest:full
set wildmenu
set t_Co=256
syntax on
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

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
set nofoldenable "set fold based on indentation
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
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" statusline
set laststatus=2

" airline UI
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

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

" automatic Whitespace removal
autocmd VimEnter,BufReadPost,bufwritepost,bufenter * :FixWhitespace

" set default terminal background color
set background=dark
" set background=light

hi Normal guibg=NONE ctermbg=NONE

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" vim + tmux color setup
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
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
:nnoremap <Leader>t :Files<CR>
:nnoremap <Leader>T :tab split<CR>:Files<CR>

"change the default searcher to the silver searcher
if executable('ag')
    " let g:ackprg = 'ag -i --ignore-case --nogroup --nocolor --column'
    let g:ackprg = 'ag -i --ignore-case --nogroup --column --path-to-ignore ~/.ignore'
endif
" map <Leader>a :Ack<Space>
map <Leader>f :Ack -Q ''<left>
map <Leader>F :tab split<CR>:Ack -Q ''<left>

"Vue.js support
autocmd FileType vue syntax sync fromstart

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


" custom filetypes
autocmd BufRead,BufNewFile *.mvue set filetype=vue
autocmd BufRead,BufNewFile *.twig set filetype=html

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

" Clipboard settings (linux and mac os)
if system('uname -s') == "Darwin\n"
  "OSX
  set clipboard=unnamed
else
  "Linux
  set clipboard=unnamedplus
endif

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+b
noremap <Leader>P "+p

" ctrlsf remap
nnoremap <Leader>ss :CtrlSF ''<left>
nnoremap <Leader>st :CtrlSFToggle<CR>
" the size of the seatch window
let g:ctrlsf_winsize = '40%'
" autofocus at start
let g:ctrlsf_auto_focus = {
      \ "at": "start"
      \ }


nnoremap <Leader>5 :vertical resize 50<CR>

"Set the line numbers
set number
set relativenumber

" a shortcut for replace all matches in a file
nnoremap <Leader>r :%s/

"tabs mapping
nnoremap tp       :tabprevious<CR>
nnoremap tn       :tabnext<CR>
nnoremap tt       :tabnew<CR>
nnoremap tc       :tabclose<CR>

"remapping default space
nnoremap <Space> A

"Git Gutter Plugin Mapping
nnoremap <Leader>gt :GitGutterToggle<CR>

nnoremap gf <C-w>gf

"Emmet remap
nnoremap <Leader>e :Emmet <right>

"in 3-way diff vim-fugitive -> press ,ga to see the diff in a new tab
nnoremap <leader>ga :tab sp \| Gvedit :1 \| windo diffthis<CR>
