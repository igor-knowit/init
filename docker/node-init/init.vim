
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set guicursor=i:block

" Clopboard is working
set clipboard=unnamedplus

call plug#begin()
" Plugin Section
" Apperance
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'

  Plug 'jiangmiao/auto-pairs'

  Plug 'sheerun/vim-polyglot'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'preservim/nerdtree'

  Plug 'preservim/nerdcommenter'
  Plug 'bronson/vim-trailing-whitespace'

  " Intelli ????
  Plug 'neovim/nvim-lspconfig'



  Plug 'neoclide/coc.nvim', {'branch': 'release'}



  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'

  Plug 'mhinz/vim-startify'
  Plug 'tomtom/tcomment_vim'
  Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
  Plug 'https://github.com/ervandew/supertab.git' " Supertab

"  Colorschmes
  Plug 'morhetz/gruvbox'
  Plug 'elvessousa/sobrio'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'cocopon/iceberg.vim'
  Plug 'sainnhe/everforest'

  " Test Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " GIT
  Plug 'mhinz/vim-signify'        " Oznake koje su se linije mijenjale u trenutno otvorenom file-u
  Plug 'tpope/vim-fugitive'       " Glavni plugin za git
  Plug 'tpope/vim-rhubarb'        " Dodatak za fugitive
  Plug 'junegunn/gv.vim'          " Dodatak za fugitive

  " Markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

  " GoLang
  " Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()


" colorscheme gruvbox
" colorscheme nightfox
colorscheme everforest

let g:airline_theme='sobrio'
" let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


map <F5> :!docker exec go-first go run /source<cr>


