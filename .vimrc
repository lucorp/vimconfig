    " Plugin manager configuration

    set nocompatible              " required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " alternatively, pass a path where Vundle should install plugins call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'powerline/powerline'
    Plugin 'vim-scripts/surround.vim'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'tomtom/tcomment_vim'
    Plugin 'lifepillar/vim-cheat40'
    Plugin 'valloric/youcompleteme'

    " add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
    Plugin 'tmhedberg/SimpylFold'

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required

" Some basic vim configuration

    set number
    set linebreak
    set showbreak=˿	
    set textwidth=100
    set showmatch	
    set spell
    set errorbells
    set visualbell
    set hlsearch
    set smartcase
    set ignorecase
    set incsearch
    set autoindent
    set shiftwidth=4
    set smartindent
    set smarttab
    set softtabstop=4
    set ruler	
    set undolevels=1000
    set backspace=indent,eol,start
    set fillchars+=vert:│

" Shortcuts configuration

    " split navigations
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-DOWN> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-UP> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-RIGHT> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>
    nnoremap <C-LEFT> <C-W><C-H>
    nnoremap <C-S-RIGHT> <C-W><S-L>
    nnoremap <C-S-LEFT> <C-W><S-H>
    nnoremap <C-S-DOWN> <C-W><S-J>
    nnoremap <C-S-UP> <C-W><S-K>

    " own macros
    map <C-Q> gcc<Down>
    map <C-D> <Esc><Esc>yyp<END>i
    map <C-S> :wa<CR>
    map <C-X> :wqa<CR>

" Starup program configuration

    colorscheme gruvbox
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    set bg=dark
    syn on

    " Powerline configuration
    python3 from powerline.vim import setup as powerline_setup
    python3 powerline_setup()
    python3 del powerline_setup

    " I want to highlight whole todo and fixme lines
    augroup myTodo
	autocmd!
	autocmd Syntax * syntax match myTodo /\v\_.<(TODO|FIXME).*/hs=s+1 containedin=.*Comment
    augroup END

    highlight link myTodo Todo
    hi Comment ctermfg=LightBlue

    " Highlight background of active line

    augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul
	autocmd WinLeave * set nocul
    augroup END
