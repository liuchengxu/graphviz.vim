if exists('b:did_dot_loaded')
  finish
endif
let b:did_dot_loaded = 1

setlocal omnifunc=graphviz#completion#Omni
setlocal errorformat=%EError:\ %f:%l:%m,%+Ccontext:\ %.%#,%WWarning:\ %m
setlocal commentstring="// %s"

command! -bang -nargs=* -complete=custom,graphviz#Graphviz        Graphviz        call graphviz#show(<bang>0, <f-args>)
command! -bar  -nargs=* -complete=custom,graphviz#GraphvizCompile GraphvizCompile call graphviz#compile(<f-args>)

if get(g:, 'ncm2_loaded', 0)
  autocmd User Ncm2Plugin call ncm2#register_source({
        \ 'name' : 'dot',
        \ 'priority': 9,
        \ 'subscope_enable': 1,
        \ 'scope': ['dot'],
        \ 'mark': 'dot',
        \ 'word_pattern': '[\w\-]+',
        \ 'complete_pattern': ':\s*',
        \ 'on_complete': ['ncm2#on_complete#omni', 'graphviz#completion#Omni'],
        \ })
endif
