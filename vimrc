" Enable syntax highlighting
syntax on

" Map 'jj' in insert mode to escape (a faster way to exit insert mode)
imap jj <esc>

" Display line numbers
set number

" Set the number of spaces a tab character represents
set tabstop=3

" Set the number of spaces used for auto-indenting
set shiftwidth=3

" Highlight matching brackets and parentheses
set showmatch

" Display the cursor position (line and column) in the status line
set ruler

" Automatically indent new lines to match the previous line
set autoindent

" Use spaces instead of tabs
set expandtab

" Disable line wrapping
set nowrap

" Highlight search results
set hlsearch

" Disable swap files (to avoid creating temporary swap files)
set noswapfile

" Map Ctrl+f to open the directory of the current file in a new buffer
map <C-f> :e %:h <CR>

" Map 'F' to maximize the current Vim window horizontally and vertically
map F <C-w>_<C-w>\|

" Map 'f' to equalize window sizes
map f <C-w>=

" Set the color scheme background to dark (better for dark terminal themes)
set background=dark

" Map Ctrl+p to paste the last yanked text from the unnamed register (register 0)
map <C-p> "0p

" Map Ctrl+t to open a terminal in the directory of the current file
map <C-t> ::let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR> clear<CR>

" Function to trim trailing whitespace in the file
fun! Trimwhitespace()
  let l:save = winsaveview() " Save the current view position
  keeppatterns %s/\s\+$//e " Remove trailing whitespace without breaking undo history
  call winrestview(l:save) " Restore the saved view position
endfun

" Call the TrimWhitespace function to clean up the file
call TrimWhitespace()

" Automatically call TrimWhitespace before saving any file
autocmd BufWritePre * call TrimWhitespace()
```
