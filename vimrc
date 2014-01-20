set nocompatible
set number
set ruler
set backspace=2
set mouse=a
set tabstop=8 " how many spaces a tab character expands to visually
set expandtab " use soft tabs
set softtabstop=4 " set the number of spaces for soft tabs
set shiftwidth=4 " # of columns shifted using >> and << commands

"File type specific indentation"
filetype indent plugin on

"Mappings for easier tab movement"
map <F5> :tabp<CR>
map <F6> :tabn<CR>
imap <F5> <ESC>:tabp<CR>i
imap <F6> <ESC>:tabn<CR>i

"Other nice mappings"
map <Backspace> ^

"Prevent navigating in Insert mode lol"
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

"Easy escape from insert mode"
inoremap kj <Esc>

"Prettiness"
syntax on
set bg=dark
set t_Co=256
if has("gui_running")
    colorscheme solarized
else
    colorscheme desert
endif
if has("x11")
    set guifont=Ubuntu\ Mono\ 12
else
    set guifont=Monaco:h13
endif

