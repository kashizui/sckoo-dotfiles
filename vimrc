" General formatting
set nocompatible
set number
set ruler
set backspace=2
set mouse=a
set tabstop=8 " how many spaces a tab character expands to visually
set expandtab " use soft tabs
set softtabstop=4 " set the number of spaces for soft tabs
set shiftwidth=4 " # of columns shifted using >> and << commands

" Pretty colors
syntax on
set bg=dark
set t_Co=256

" File type specific indentation
filetype indent plugin on

" Sane defaults for file types
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Read modeline
set modeline
set modelines=5

" Use directory tree for netrw
let mapleader=" "
let g:netrw_liststyle=3
map <leader><space> :Explore<cr>
map <leader>t :tabnew %<cr>:Explore<cr>

" Mappings for easier tab movement
map <F5> :tabp<CR>
map <F6> :tabn<CR>
imap <F5> <ESC>:tabp<CR>a
imap <F6> <ESC>:tabn<CR>a
map <leader>[ :tabp<CR>
map <leader>] :tabn<CR>

" I can never reach the caret
map <Backspace> ^

" Y yanks until end of line to match D behavior
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
" Removed for now because delays appearance of colon, which irks me
" map:W :w
" map:WQ :wq
" map:wQ :wq
" map:Wq :wq
" map:Q :q

" Look for a .tags file iteratively from the current directory up to the root
set tags=./.tags;/,.tags;/

" Search settings
set incsearch
set hlsearch

" Show the current command in the bottom right corner
set showcmd

" Mac-only settings
if has("unix")
  if (system('uname -s') =~? "darwin")

    " Use Mac OS X pasteboard
    nmap <leader>v :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
    nmap <leader>c :.w !pbcopy<CR><CR>
    vmap <leader>c :w !pbcopy<CR><CR>

  endif
endif

" Inspired by percyliang
" function! ide()
"     
" endfunction
