function! coc#source#dot#init() abort
  " options of current source
  return {
        \ 'shortcut': 'DOT',
        \ 'priority': 9,
        \ 'filetypes': ['dot'],
        \ }
endfunction

function! coc#source#dot#complete(opt, cb) abort
  let items = graphviz#data#candidates()
  call a:cb(items)
endfunction
