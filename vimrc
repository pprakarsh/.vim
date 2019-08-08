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

"loading template c++ file
autocmd BufNewFile *.cpp :0r ~/.vim/cpp
autocmd BufNewFile *.cpp :w!

 " path to directory where library can be found
" let g:clang_library_path='/usr/lib/llvm-6.0/lib'
 " or path directly to the library file
 let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang-6.0.so.1'
 let g:clang_snippets = 1
 let g:clang_snippets_engine = 'clang_complete'
 let g:clang_use_library=1                          "uses clang_library 
 let g:clang_complete_auto=1                        "automatic completion after ., .., ::
 let g:clang_auto_select=1                          "automatically selects (but does not enter) first option in pop-up menu

 let g:clang_hl_errors=1                            "highlights errors
 let g:clang_jumpto_declaration_in_preview_key=1    "jumps to declaration in preview
 let g:clang_complete_patterns=1                    "completes loops and other code patterns
