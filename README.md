# Graphviz.vim

An almost completely-rewritten fork of [wmgraphviz.vim](https://github.com/wannesm/wmgraphviz.vim).

- Less commands.
- Simpler configuration.

## Requirement

- [Graphviz](http://www.graphviz.org/)

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'liuchengxu/graphviz.vim'
```

## Usage

Open the output file whose filename is based on the current filename with `.format` appended.

```vim
" `.format` is 'pdf' by default.
" Option: 'ps', 'pdf', 'png', 'jpg', 'gif', 'svg'
:Graphviz

" Open the generated png file
:Graphviz png
```

`:Graphviz!` is same with `:Graphviz`, but compile first if the output file does not exist.

```vim
" Open the generated png file, try compiling if the target does not exist.
" Options are same with `:GraphvizCompile`.
:Graphviz! png
```

Compile the graph in the same directory as the current source dot-file.

```vim
" :GraphvizCompile [exe] [format]

" By default:
" :GraphvizCompile dot pdf
:GraphvizCompile

" Specify the output format
:GraphvizCompile png

" Specify the exe and format
:GraphvizCompile dot gif
```

## Customization

```vim
" How to open the generated output file.
" If does not exist, graphviz.vim will automatically choose the right way depending on the platform.
let g:graphviz_viewer = 'open'

" Default output format. Default is 'pdf'.
let g:graphviz_output_format = 'pdf'

" Options passed on to dot. Default is ''.
let g:graphviz_shell_option = ''
```
