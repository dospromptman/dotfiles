filetype on
filetype off
call pathogen#incubate()
call pathogen#helptags()
filetype plugin on

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '.*-meta.xml$']

syntax enable
set background=dark
colorscheme solarized
set nocompatible

set t_Co=256
set shiftwidth=4
set tabstop=4
set list
set number
set expandtab
set autoindent
syntax on

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

"set rtp+=/Users/jbury/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set laststatus=2
set noshowmode

set foldmethod=indent
set foldlevelstart=99

"hi Normal guibg=#32322f ctermbg=236
"hi NonText guibg=#32322f ctermbg=236
hi ColorColumn guibg=#000000 ctermbg=0
let &colorcolumn="80,".join(range(120,320),",")
hi CursorLine cterm=NONE,underline

hi MatchParen cterm=underline ctermbg=none ctermfg=none

set listchars=eol:⏎,tab:␉·,trail:·

"set makeprg=ant\ -find\ build-jbury.xml\ 2>&1\ \\\|\ sed\ -l\ 's/^Test\ failure\,\ method:\ \\\([^.]*\\\)\\\(.*\\\)/Test\ failure\,\ file:\ classes\\/\\1.cls\ method:\ \\1\\2/'
"set efm=%-D\ %#[echo\]\ Entering:\ %f,Error:\ %f(%l\\,%c):%m,Test\ failure\\,\ file:\ %f\ method:\ %.%#\ --\ %m\ stack\ %.%#:\ line\ %l\\,\ column\ %c,%-G%.%#

autocmd FileType apex setlocal noeol binary fileformat=dos
