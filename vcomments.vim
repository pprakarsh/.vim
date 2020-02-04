function! Comment()
    let ext = tolower(expand('%:e'))
    if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
        silent s/^/\#/
    elseif ext == 'js'|| ext == 'cpp' || ext == 'c'
        silent s:^:\/\/:g
    elseif ext == 'vim'
        silent s:^:\":g
    endif
endfunction

function! Uncomment()
    let ext = tolower(expand('%:e'))
    if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
        silent s/^\#//
    elseif ext == 'js' || ext == 'cpp' || ext == 'c'
        silent s:^\/\/::g
    elseif ext == 'vim'
        silent s:^\"::g
    endif
endfunction
