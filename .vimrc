
set nocompatible              " required
filetype off                  " required
" Set runtime path to include fzf plugin 
set rtp+=~/.fzf
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"paste toggle to paste text 'as is'
set pastetoggle=<F12>

"Syntax highlighting for maths
function! MathAndLiquid()
    "" Define certain regions
    " Block math. Look for "$$[anything]$$"
    syn region math start=/\$\$/ end=/\$\$/
    " inline math. Look for "$[not $][anything]$"
    syn match math_block '\$[^$].\{-}\$'

    " Liquid single line. Look for "{%[anything]%}"
    syn match liquid '{%.*%}'
    " Liquid multiline. Look for "{%[anything]%}[anything]{%[anything]%}"
    syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
    " Fenced code blocks, used in GitHub Flavored Markdown (GFM)
    syn region highlight_block start='```' end='```'

    "" Actually highlight those regions.
    hi link math Statement
    hi link liquid Statement
    hi link highlight_block Function
    hi link math_block Function
endfunction

" Call everytime we open a Markdown file
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown call MathAndLiquid()

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

set clipboard=unnamedplus

set encoding=utf-8

set tabstop=4 |
set softtabstop=4 |
set shiftwidth=4 |
set expandtab |

"PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"Flag unecessary whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Bundle 'Valloric/YouCompleteMe'
"
""YouComplteMe settings
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

" This package is suposed to stop folding from creating too many folds. can't
" seem to install with :PluginInstall though
"Plugin 'tmhedberg/SimplyFold'
Plugin 'vim-scripts/indentpython.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

Plugin 'kien/ctrlp.vim'

set nu

" Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'junegunn/goyo.vim'

Plugin 'jpalardy/vim-slime' 

" Markdown editing
" Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'AliHeggie/vim-markdown-preview'
let vim_markdown_preview_pandoc=1
let vim_markdown_preview_pandoc_mathml=1
let vim_markdown_preview_browser='firefox'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_math = 1
"markdown folds
Plugin 'masukomi/vim-markdown-folding'
set nocompatible
if has("autocmd")
    filetype plugin indent on
endif
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'christoomey/vim-tmux-navigator'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Shortcut to run python code"
nnoremap <buffer> <F9> :'<,'>w !python<cr>

let g:slime_target = "tmux"

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

:nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" copy (wrote) highlighted text to .vimbuffer
"vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR>
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR>
map <C-d> :!cat ~/.vimbuffer \| clip.exe <CR>
" paste from buffer
map <C-g> :r ~/.vimbuffer<CR>
