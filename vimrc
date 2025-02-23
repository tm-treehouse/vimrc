syntax on
imap jj <esc>
set number
set tabstop=3
set shiftwidth=3
set showmatch
set ruler
set autoindent
set expandtab
set nowrap
set hlsearch
set noswapfile


map <C-f> :e %:h <CR>

map F <C-w>_<C-w>\|
map f <C-w>=

set background=dark
map <C-p> "0p

"Open a terminal based on local opened file
map <C-t> ::let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR> clear<CR> 

fun! Trimwhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
call TrimWhitespace()

autocmd BufWritePre * call TrimWhitespace()
