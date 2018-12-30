function! graphviz#completion#Omni(findstart, base) abort
  if a:findstart
    let line = getline('.')
    let pos = col('.') - 1
    while pos > 0 && line[pos - 1] !~ '=\|,\|\[\|\s'
      let pos -= 1
    endwhile
    return pos
  else
    if !exists('s:graphviz_list')
      let s:graphviz_list = graphviz#data#candidates()
    endif
    return filter(copy(s:graphviz_list), 'stridx(v:val.word, a:base) >= 0')
  endif
endfunction
