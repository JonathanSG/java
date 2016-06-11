syntax on
set hlsearch

"hi Comment  term=bold       ctermfg=Yellow       guifg=#80a0ff
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
"hi Comment  term=bold       ctermfg=blue       guifg=#80a0ff
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Comment  term=bold       ctermfg=blue       guifg=#80a0ff
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black


map <F5> :set hls!<bar>set hls?<CR>

map <f12> :q! <cr>


let mapleader = ","
map <silent> <leader>s :source ~/.vimrc <cr>
map <silent> <leader>e :e ~/.vimrc <cr>
map <silent> <leader>c <esc><home>i#<esc>
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr>


set tabstop=4
set ic


"map <f8> :mkview <cr>
"loadview
"map <f10> zo

highlight Folded ctermbg=black ctermfg=green

"function Ri()
"let b:x = system("ri '" . input("ri: ") . "' > /tmp/ri_output")
"sp /tmp/ri_output
"endfunction
"map <F2> :call Ri()<CR>

set path+=./,/usr/include,/usr/include/asm,/usr/include/linux,/usr/include/sys
set tags=/usr/include/tags,./tags,/usr/include/asm/tags,/usr/include/linux/tags,/usr/include/sys/tags

set vb t_vb=
set bs=2         " allow backspacing over everything in insert mode


"" Up, Down, Home and End keys in normal and insert mode
"map <up> gk
"imap <up> <C-o>gk
"map <down> gj
"imap <down> <C-o>gj
"map <home> g<home>
"imap <home> <C-o>g<home>
"map <end> g<end>
"imap <end> <C-o>g<end>

" Don't break words in middle
set linebreak

" Show incomplete paragraphs even when they don'f fit on screen (avoid @'s)
"set display+=lastline

"colorscheme elflord



set incsearch
set shiftwidth=4


nmap <C-W>e  :new \| vimshell bash<CR>
nmap <C-W>E  :vnew \| vimshell bash<CR>

nmap <C-W>9 :tabnext <CR>

"nmap tt :tabnew <CR>
"nmap <tab> :tabnext <CR>
"nmap <c-tab> :tabprevious <CR>

nmap <c-s> :w <CR>


"set backup!
"set formatoptions=tql
"map <F12> :set formatoptions=tql <CR>
set matchpairs=

imap <C-F> {<CR>}<C-O>O
set showcmd

nmap tt :tabnew <CR>
nmap <c-tab> :tabprevious <CR>
nmap <tab> :tabnext <CR>
nmap <f4> :tabnext <CR>
nmap <f3> :tabprevious <CR>

set paste
set ruler
set noexpandtab
set ai
set number
 
nmap <f11> :set ai   <cr>
nmap <f12> :set ai !  <cr>
set wrapscan !
