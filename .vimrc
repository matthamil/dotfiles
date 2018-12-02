call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'elzr/vim-json'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'vim-scripts/closetag.vim'
Plug 'Townk/vim-autoclose'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-mix-format'

call plug#end()

" Vim-Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'

" Colorscheme
colorscheme OceanicNext

" NERDTree Settings
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Finds current file in NERDTree
nmap ,n :NERDTreeFind<CR>

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '·'

" Custom Mappings
" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let_s=@/<Bar>:%s/\s\+$//e<Bar>let @/=_s<Bar><CR>

" Add Line Numbers
set number

" Display status line always
set laststatus=2

" Tab Spacing settings
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set cindent
imap <C-Return> <CR><CR><C-o>k<Tab>

" Highlight all search results
set hlsearch

" Fix error where pasting breaks copied indentations
set paste

" Word wrapping, line breaks only happen when Enter is pressed
set wrap
set linebreak
set nolist

" Allows j and k to work on wrapped lines
noremap j gj
noremap k gk

set tabstop=2 shiftwidth=2 expandtab

" Disable safe write
set backupcopy=yes

" JS highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1
" JS highlighting for Flow
let g:javascript_plugin_flow = 1

" Prettier
" autocmd FileType javascript set formatprg=prettier\ --stdin
" Prettier on save
" autocmd BufWritePre *.js :normal gggqG

set autoindent

" Elixir lang settings
" Automatically format on save
let g:mix_format_on_save = 1
