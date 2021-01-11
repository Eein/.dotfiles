call plug#begin('~/.vim/plugged')
  Plug 'sainnhe/edge'
  Plug 'itchyny/lightline.vim'
  Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
  Plug 'sheerun/vim-polyglot'
  Plug 'kien/ctrlp.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-fugitive'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'qpkorr/vim-bufkill'
  Plug 'ap/vim-buftabline'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'matze/vim-move', { 'tag': 'v1.3' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'neomake/neomake'
  Plug 'sbdchd/neoformat'
  Plug 'ptzz/lf.vim'
call plug#end()

set backupcopy=yes
filetype off
syntax enable
set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set mouse=a
set number
set title
set clipboard=unnamedplus
set autoread
set termguicolors
set background=dark
set splitright
set splitbelow

colorscheme edge
let g:edge_terminal_italics=1
let g:lightline = { 'colorscheme': 'edge' }

imap jj <Esc>
nnoremap 0 ^
cnoreabbrev E Lf

autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead,BufNewFile *.{exs} setlocal filetype=elixir
autocmd BufWritePre *.js Neoformat

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

map <C-H> :bprev<CR>
map <C-L> :bnext<CR>
map <Leader>vi :e ~/.config/nvim/init.vim<CR>
map <Leader>so :source ~/.config/nvim/init.vim<CR>

let g:move_key_modifier = 'C'
let g:lf_replace_netrw = 1
