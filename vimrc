set nocompatible
set number
set ruler
set backspace=2
set mouse=a
set tabstop=8 " how many spaces a tab character expands to visually
set expandtab " use soft tabs
set softtabstop=4 " set the number of spaces for soft tabs
set shiftwidth=4 " # of columns shifted using >> and << commands

" File type specific indentation
filetype indent plugin on

" Mappings for easier tab movement
map <F5> :tabp<CR>
map <F6> :tabn<CR>
imap <F5> <ESC>:tabp<CR>i
imap <F6> <ESC>:tabn<CR>i

" I can never reach the caret
map <Backspace> ^

" Y yanks until end of line
map Y y$

" Use gj and gk instead of j and k.  This moves the line up and down visually,
" so if the line wraps, you will not jump to a different line
" nnoremap uses normal mode; inoremap is for insert mode
" http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
nnoremap <silent> j gj
nnoremap <silent> k gk
inoremap <silent> <Down> <Esc>gja
inoremap <silent> <Up> <Esc>gka

" Going to the next element in a search will center on the line it's found in.
" http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
map n nzz
map N Nzz

" If I accidentally press shift, q and w will still work
" https://github.com/samking/config-files/blob/master/vimrc
map:W :w
map:WQ :wq
map:wQ :wq
map:Wq :wq
map:Q :q

" Search
set incsearch
set hlsearch

" Prettiness
syntax on
set bg=dark
set t_Co=256

