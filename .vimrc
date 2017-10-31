set nocompatible

" Required: Enable filetypes
filetype plugin indent on

" *************************************
" Basic Setup
" *************************************

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Fix backspace indent
set backspace=indent,eol,start

" Tabs. May be overwritten by autocmd rules
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set textwidth=80

" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Encoding
set bomb
set binary
set ttyfast

" Directories for swap files
set nobackup
set noswapfile			" Disable the swapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/usr/bin/zsh		" Set zsh as the default shell

" Session Management
let g:session_directory = "~/.vim/session"

"******************************************************
" Visual Settings
"******************************************************
syntax on			" Enable the syntax highlighting
set ruler			" Enable the ruler
set number			" Enable line numbering
highlight LineNr ctermfg=red
syntax enable
set background=dark

set mousemodel=popup
set gfn=Roboto\ Mono\ 9

" Konsole settings
if $TERM !~# "konsole.*"
	let base16colorspace=256
endif

if $COLORTERM == 'konsole'
	set term=konsole-256color
else
	if $TERM == 'xterm'
		set term=xterm-256color
	endif
endif

if &term =~ '256color'
	set t_ut=
endif

" Status bar
set laststatus=2

" Use modeline overrides
set modeline
set modelines=10

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set title

func! WordProcessorMode()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en_us
	setlocal noexpandtab
endfu

com! WP call WordProcessorMode()
