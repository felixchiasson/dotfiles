" ===== Different keybindings for vim

" Map <space> to / (search) and C-<Space> to ? (Reverse Search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Remap VIM 0 to first non blank character
map 0 ^

" HTML tag closing
inoremap <C-_> <space><bs><esc>:call InsertCloseTag()<cr>a
