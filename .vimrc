" Package manager
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'damage220/vim-finder'
Plug 'junegunn/fzf.vim'

call plug#end()


" Editor configuration
colorscheme gruvbox
set bg=dark
set number
autocmd vimenter * NERDTree
highlight VertSplit cterm=NONE
set fillchars=vert:│
let g:ackprg = 'ag --nogroup --nocolor --column'
set list
set listchars=tab:▸\ ,eol:¬
set whichwrap+=<,>,[,]


" Shortcuts
nmap <F6> :NERDTreeToggle<CR>
nmap <F12> :qa!<CR>
nnoremap <C-S-Up> <C-W><C-J>
nnoremap <C-S-Down> <C-W><C-K>
nnoremap <C-S-Right> <C-W><C-L>
nnoremap <C-S-Left> <C-W><C-H>
nmap <ESC><ESC> :q!<CR>
nmap <F2> :wq<CR>
nnoremap <C-d> <ESC>yyp

"Yanking for mac and linux
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
