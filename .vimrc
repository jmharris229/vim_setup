execute pathogen#infect()
call pathogen#helptags()

" Plug to play
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ajmwagar/vim-deus'
Plug 'simeji/winresizer'
Plug 'sjl/gundo.vim'
Plug 'danro/rename.vim'
Plug 'jalcine/cmake.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'reedes/vim-colors-pencil'
Plug 'scrooloose/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'roosta/srcery'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'raimondi/delimitmate'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'cakebaker/scss-syntax.vim'
Plug 'digitaltoad/vim-jade'
Plug 'majutsushi/tagbar'
Plug 'wincent/command-t'
Plug 'terryma/vim-smooth-scroll'
Plug 'vim-syntastic/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'takac/vim-spotifysearch'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag'

call plug#end()

" - - - BASIC STYLING - - -

" highlight all the ish
:syntax on

" give me numbered lines
set number

" gives me the title of file, the current column character, and wraps text
" in the airline bar
set title
set ruler
set wrap 
set autoindent

" provide a solid column, for the 80 char count
set colorcolumn=80

" set tab indentation
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" fully highlight searched word
set hlsearch

" set common functionality of the backspace key
set backspace=indent,eol,start

" set up colorscheme and aesthetics
colorscheme deus
let g:airline_theme='deus'


" - - - PLUGIN MODS - - -

" you complete specified path to python
let g:ycm_server_python_interpreter = '/Users/joelharris/anaconda/bin/python'

" style guide to gray indention bars indicators on files
let g:indent_guides_start_level = 3
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

" nerdtree toggling
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


" - - - KEY REMAPS - - -

" Avoid using the <esc> key
imap ii <Esc>
" Quickly close a pane
nmap qq :q<CR>


" key mapping for nerdtree toggling
" and moving through directories
map <C-\> :NERDTreeToggle<CR>
map <C-s> :NERDTreeMapJumpNextSibling<CR>

" For moving up and down documents smoothly
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>

