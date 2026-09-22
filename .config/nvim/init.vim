cnoreabbrev Q q
cnoreabbrev Q! q!
cnoreabbrev Qall qall
cnoreabbrev Qall! qall!
cnoreabbrev W w
cnoreabbrev W! w!
cnoreabbrev WQ wq
cnoreabbrev Wa wa
cnoreabbrev Wq wq
cnoreabbrev wQ wq
colorscheme retrobox
inoremap " ""<Esc>:let leavechar='"'<CR>i
"inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap < <><Esc>:let leavechar=">"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap ` ``<Esc>:let leavechar="`"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let mapleader = " "
map ; :
map <Leader>e :Lexplore<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap N Nzzzv
nnoremap n nzzzv
set autoindent
set autowrite
set cursorcolumn
set cursorline
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set matchtime=3
set mouse=a
set number
set relativenumber
set ruler
set scrolloff=8
set shiftwidth=4
set showmatch
set smartcase
set smartindent
set statusline=
set statusline+=%#Visual#\
set statusline+=%#StatusLine#\
set statusline+=\ %f
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=%#StatusLineNC#
set statusline+=\ %Y\
set statusline+=\ [%{&fileformat}]
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding}]
set statusline+=\ %#Visual#
set statusline+=\ %l/%L
set statusline+=\ :\ %c\
set syntax=on
set tabstop=4
set termguicolors
set wildmenu
vmap < <gv
vmap <C-c> "+y
vmap > >gv

if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif
