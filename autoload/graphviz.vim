let s:format = get(g:, 'graphviz_output_format', 'pdf')
let s:shell_option = get(g:, 'graphviz_shell_option', '')

" http://www.graphviz.org/doc/info/output.html
let s:supported = ['eps', 'ps', 'pdf', 'png', 'jpg', 'gif', 'svg']

let s:is_mac = has('mac')
let s:is_win = has('win32')
let s:is_unix = has('unix')

let s:viewer = get(s:, 'viewer', {})
let s:viewer.mac = 'open'
let s:viewer.win = ' start'
let s:viewer.unix = executable('xdg-open') ? 'xdg-open' :
      \ (s:format == 'ps' ? 'gv' : 'acroread')

function! s:viewer.open() abort
  if s:is_mac
    return self.mac
  elseif s:is_unix
    return self.unix
  elseif s:is_win
    return self.win
  else
    return s:err("Current platform is not supported.")
  endif
endfunction

" See dot -O option.
" Generate output filename based on the current filename with a .'format' appended.
function! s:ofile(format) abort
  return expand('%:p:r').'.'.a:format
endfunction

function! s:executable(exe) abort
  if !executable(a:exe) && a:exe != s:viewer.open()
    call s:err('Executable ['.a:exe.'] not found.')
    return v:false
  endif
  return v:true
endfunction

function! s:system(cmd) abort
  let stdout = system(a:cmd)
  if v:shell_error
    call s:err(stdout)
  endif
endfunction

function! s:parse_option(...) abort
  let num = len(a:000)

  if num > 2
    call s:err("Too many options.")
    return [v:null, v:null]
  endif

  if num == 2
    let exe = a:1
    let format = a:2
  else
    let exe = 'dot'

    if num == 1
      if index(s:supported, a:1) >= 0
        let format = a:1
      else
        call s:err("Invalid option. Acceptable: ". string(s:supported))
        return [v:null, v:null]
      endif
    else
      let format = s:format
    endif
  endif

  if !s:executable(exe)
    return [v:null, v:null]
  endif

  let s:output_fname = s:ofile(format)

  return [exe, format]

endfunction

function! s:full_path_curfname() abort
  return shellescape(expand('%:p'))
endfunction

function! s:err(msg) abort
  echohl ErrorMsg
  echom '[graphviz.vim] '.a:msg
  echohl NONE
endfunction

function! s:show() abort

  if !filereadable(get(s:, 'output_fname', v:null))
    return s:err('No output file. Please compile first.')
  endif

  let open = get(g:, 'graphviz_viewer', s:viewer.open())
  if !s:executable(open)
    return
  endif

  let cmd = s:is_win ? open.' /b '.expand('%:p:.:r').'.'.s:format :
        \ open.' '.shellescape(s:output_fname)

  call s:system(cmd)
endfunction

function! graphviz#compile(...) abort

  let [exe, output_format] = call(function('s:parse_option'), a:000)

  if empty(exe)
    return v:false
  endif

  if s:is_win
    let cmd = join([exe, '-T'.output_format, substitute(s:shell_option, ' ', '\\ ', 'g'), expand('%').' -o '.expand('%:p:.:r').'.'.output_format])
  else
    if exe == 'dot2tex'
      let dot2texoptions = get(g:, 'graphviz_dot2texoptions', '-tmath')

      if s:is_win
        let cmd = join([exe, '-Txdot', s:shell_option, expand('%').' |', exe, dot2texoptions, '> '.expand('%:p:.:r').'.tex'])
      else
        let s:output_fname = s:output_format('tex')
        let cmd = join([exe, dot2texoptions, s:full_path_curfname(), '>', shellescape(s:output_fname)])
      endif

    else
      let cmd = join([exe, '-T'.output_format, s:shell_option, s:full_path_curfname(), '-o', shellescape(s:output_fname)])
    endif
  endif

  call s:system(cmd)

  return v:true

endfunction

function! graphviz#show(bang, ...) abort
  if a:bang
    if a:000 == ['!']
      call graphviz#compile()
    else
      if !filereadable(get(s:, 'output_fname', v:null))
        call call(function('graphviz#compile'), a:000)
      endif
    endif
    call s:show()
    return
  endif

  if a:0 > 1
    return s:err("Too many options.")
  endif

  let s:output_fname = a:0 == 0 ? s:ofile('pdf') : s:ofile(a:1)

  call s:show()
endfunction

function! graphviz#Graphviz(...) abort
  return join(s:supported, "\n")
endfunction

function! graphviz#GraphvizCompile(...) abort
  let cmd = ['dot', 'neato', 'fdp', 'sfdp', 'twopi', 'circo']
  return join(cmd + s:supported, "\n")
endfunction
