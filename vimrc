colorscheme codedark							"for color scheme, VS Code color-scheme
set t_Co=256
set t_ut=
syntax enable

set tabstop=4
set softtabstop=4
set expandtab								"Tabs are shortcut for spaces
  
set showcmd								"for showing cmd in bottom-bar
set number								"for numbering every line
set cursorline								"for highlighting cursonline
filetype indent on							"loads file-type specific indentaion files
set wildmenu								"visual autocomplete for command menu
set lazyredraw								"for faster macros, redrawing screen when required
set showmatch								"highlight matching parenthisis

set incsearch								"search as characters typed
set hlsearch								"highlight matches
"turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>	

set path+=**                                "used for searching into subdirectories (using find functions)

filetype on
"for compiling and running
map <F8> :!g++ -g  % && ./a.out <CR>       
"for compiling
map <F5> :!g++ -g % <CR>
"for saving
map<F2>: w <CR>
"for debug
map <F12> :!gdb ./a.out <CR>

"loading template c++ file
autocmd BufNewFile *.cpp :0r ~/.vim/cpp
autocmd BufNewFile *.cpp :w!
