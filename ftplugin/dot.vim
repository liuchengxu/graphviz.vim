if exists('b:did_dot_loaded')
  finish
endif
let b:did_dot_loaded = 1

setlocal omnifunc=graphviz#completion#Omni
setlocal errorformat=%EError:\ %f:%l:%m,%+Ccontext:\ %.%#,%WWarning:\ %m
setlocal commentstring="// %s"

command! -bang -nargs=* Graphviz        call graphviz#show(<bang>0, <f-args>)
command! -bar  -nargs=* GraphvizCompile call graphviz#compile(<f-args>)
