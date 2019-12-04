"=====================================================
"" General settings
"=====================================================
" Configuration file for VIM
"set backup            " keep a backup file
"filetype plugin on 
set bs=2                " allow backspacing over everything in insert mode
set ai                  " set autoindenting on
set nobackup            " do not keep a backup file
set history=1024" keep 1024 lines of command line history
set nowrap              " do not wrap long lines
set visualbell          " no bell

set background=light    " msys rxvt has a light background
syntax enable                               " syntax highlight
colorscheme darkblue                        " set color scheme
set guifont=consolas;h13                    "sets the font size default

set path+=**

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration
set mouse=a
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set fileformat=unix
set showmatch                               " shows matching part of bracket pairs (), [], {}
set softtabstop=4
set enc=utf-8                               " utf-8 by default

set nobackup                                " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile                              " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard
set pastetoggle=<F10>                       " toggle paste mode

"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

"" Search settings
"=====================================================
set incsearch                            " incremental search
set hlsearch                             " highlight search results

"" Remap Tap for Esc
"=====================================================
function! ToggleEnterMapping()
  if empty(mapcheck('<CR>', 'i'))
    inoremap <CR> <Esc>`^
    return "\<Esc>"
  else
    iunmap <CR>
    return "\<CR>"
  endif
endfunction
call ToggleEnterMapping()
inoremap <expr> <S-CR> ToggleEnterMapping()
" Optional (so <CR> cancels prefix, selection, operator).
nnoremap <CR> <Esc>
vnoremap <CR> <Esc>gV
onoremap <CR> <Esc>
"=====================================================
""split navigations NERDTree
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"=====================================================

"=====================================================
"Syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"=====================================================


"=====================================================
" Enable folding methods/class. Allow you to fold with spacebar
filetype plugin indent on
"set foldmethod=indent
"set foldlevel=99
"nnoremap <space> za                       

"SympyFold
""let g:SimpylFold_docstring_preview = 1
""autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
""autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

"=====================================================
"begins pathogen plugins
"execute pathogen#infect()


"=====================================================
"NERD TREE OPTIONS
"open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

map <C-t> :tabn<CR>
map <C-T> ;tabnew<CR>

"=====================================================
"Ctag
"Open the definition in a new tab
"Open the definition in a vertical split
map <C-\> :tab spltion in a new tabit<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"=======================================================

"begins vundle plugins
set nocompatible               " required
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"keywords in the current buffer"
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'osyo-manga/vim-marching'
Plugin 'thinca/vim-quickrun'
Plugin 'scrooloose/nerdtree'

" " Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
"Plugin 'tmhedberg/SimpylFold'  "siplify the floding method
"
" " All of your Plugins must be added before the following line
call vundle#end()              " required

filetype plugin indent on      " required

