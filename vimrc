syntax on
colorscheme codedark

set runtimepath^=~/.vim/bundle/vim-surround
set runtimepath^=~/.vim/bundle/vim-repeat

set nocompatible    " Do not act as predecessor of vim (i.e. vi)

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set autoindent      " Set auto indent

set nu rnu          " Set relative line number with respect to current cursor position

set cursorline		"for highlighting cursonline

set showmatch		"highlight matching parenthisis


"For toggle between relative number and number
nnoremap <silent> ,<space> :set nonu <bar> set nu rnu <CR>
nnoremap <silent> ,,<space> :set nonu nornu <bar> set nu <CR>
nnoremap <silent> ,,,<space> :set nonu nornu <CR> 

"For Parenthesis completion
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i<CR><CR><Up>

" redef C-j to C-g
imap <C-g> <Plug>IMAP_JumpForward
nmap <C-g> <Plug>IMAP_JumpForward

"remap for exit out of quotes 
let g:BASH_Ctrl_j = 'off'
inoremap <C-j> <Right>

"shortcut for new tab
ca tn tabnew        

autocmd Filetype tex setl updatetime=1
autocmd Filetype tex inoremap { {}<Esc>i

"Setup for competitive programming
autocmd BufNewFile *.cpp :0r ~/.vim/cpp
autocmd BufNewFile *.cpp :w!
map <F8> :!g++ -g  % && ./a.out <CR>
map <F5> :!g++ -g % <CR>
map <F2> :w <CR>
map <F12> :!gdb ./a.out <CR>
map <F6> :!pdflatex %<CR><CR>
map <F7> :!xdg-open $(echo % \| sed 's/tex$/pdf/') & disown<CR>

"Starting with Vim 7, the filetype of empty .tex files defaults to
"'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set splitright      "Splitting window on right


set path+=**        "For searching files recursively using find command

source ~/.vim/vcomments.vim
map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>
