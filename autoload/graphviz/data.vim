" Completion dictionaries

let s:attrs = [
\	{'word': 'arrowhead=',     'menu': 'Style of arrowhead at head end', 'kind': '[E]'},
\	{'word': 'arrowsize=',     'menu': 'Scaling factor for arrowheads', 'kind': '[E]'},
\	{'word': 'arrowtail=',     'menu': 'Style of arrowhead at tail end', 'kind': '[E]'},
\	{'word': 'bgcolor=',       'menu': 'Background color', 'kind': '[G]'},
\	{'word': 'color=',         'menu': 'Node shape/edge/cluster color', 'kind': '[E,G,N]'},
\	{'word': 'comment=',       'menu': 'Any string', 'kind': '[E,G,N]'},
\	{'word': 'compound=',      'menu': 'Allow edges between clusters', 'kind': '[G]'},
\	{'word': 'concentrate=',   'menu': 'Enables edge concentrators', 'kind': '[G]'},
\	{'word': 'constraints=',   'menu': 'Use edge to affect node ranking', 'kind': '[E]'},
\	{'word': 'decorate=',      'menu': 'If set, line between label and edge', 'kind': '[E]'},
\	{'word': 'dir=',           'menu': 'Direction of edge', 'kind': '[E]'},
\	{'word': 'distortion=',    'menu': 'Node distortion', 'kind': '[N]'},
\	{'word': 'fillcolor=',     'menu': 'Node/cluster fill color', 'kind': '[G,N]'},
\	{'word': 'fixedsize=',     'menu': 'Label text has no effect on node size', 'kind': '[N]'},
\	{'word': 'fontcolor=',     'menu': 'Font face color', 'kind': '[E,G,N]'},
\	{'word': 'fontname=',      'menu': 'Font family', 'kind': '[E,G,N]'},
\	{'word': 'fontsize=',      'menu': 'Point size of label', 'kind': '[E,G,N]'},
\	{'word': 'group=',         'menu': 'Name of node group', 'kind': '[N]'},
\	{'word': 'headlabel=',     'menu': 'Label placed near head of edge', 'kind': '[E]'},
\	{'word': 'headport=',      'menu': 'Where on the node to attach head of edge', 'kind': '[E]'},
\	{'word': 'height=',        'menu': 'Height in inches', 'kind': '[N]'},
\	{'word': 'label=',         'menu': 'Any string', 'kind': '[E,N]'},
\	{'word': 'labelangle=',    'menu': 'Ange in degrees', 'kind': '[E]'},
\	{'word': 'labeldistance=', 'menu': 'Scaling factor for distance for head or tail label', 'kind': '[E]'},
\	{'word': 'labelfontcolor=','menu': 'Type face color for head and tail labels', 'kind': '[E]'},
\	{'word': 'labelfontname=', 'menu': 'Font family for head and tail labels', 'kind': '[E]'},
\	{'word': 'labelfontsize=', 'menu': 'Point size for head and tail labels', 'kind': '[E]'},
\	{'word': 'labeljust=',     'menu': 'Label justficiation', 'kind': '[G]'},
\	{'word': 'labelloc=',      'menu': 'Label vertical justficiation', 'kind': '[G]'},
\	{'word': 'layer=',         'menu': 'Overlay range', 'kind': '[E,N]'},
\	{'word': 'lhead=',         'menu': '[E]'},
\	{'word': 'ltail=',         'menu': '[E]'},
\	{'word': 'minlen=',        'menu': '[E]'},
\	{'word': 'nodesep=',       'menu': 'Separation between nodes, in inches', 'kind': '[G]'},
\	{'word': 'orientation=',   'menu': 'Node rotation angle', 'kind': '[N]'},
\	{'word': 'peripheries=',   'menu': 'Number of node boundaries', 'kind': '[N]'},
\	{'word': 'rank=',          'menu': '[G]'},
\	{'word': 'rankdir=',       'menu': '[G]'},
\	{'word': 'ranksep=',       'menu': 'Separation between ranks, in inches', 'kind': '[G]'},
\	{'word': 'ratio=',         'menu': 'Aspect ratio', 'kind': '[G]'},
\	{'word': 'regular=',       'menu': 'Force polygon to be regular', 'kind': '[N]'},
\	{'word': 'rotate=',        'menu': 'If 90, set orientation to landscape', 'kind': '[G]'},
\	{'word': 'samehead=',      'menu': '[E]'},
\	{'word': 'sametail=',      'menu': '[E]'},
\	{'word': 'shape=',         'menu': 'Node shape', 'kind': '[N]'},
\	{'word': 'shapefile=',     'menu': 'External custom shape file', 'kind': '[N]'},
\	{'word': 'sides=',         'menu': 'Number of sides for shape=polygon', 'kind': '[N]'},
\	{'word': 'skew=',          'menu': 'Skewing node for for shape=polygon', 'kind': '[N]'},
\	{'word': 'style=',         'menu': 'Graphics options', 'kind': '[E,N]'},
\	{'word': 'taillabel=',     'menu': 'Label placed near tail of edge', 'kind': '[E]'},
\	{'word': 'tailport=',      'menu': 'Where on the node to attach tail of edge', 'kind': '[E]'},
\	{'word': 'weight=',        'menu': 'Integer cost of stretching an edge', 'kind': '[E]'},
\	{'word': 'width=',         'menu': 'width in inches', 'kind': '[N]'}
\	]

let s:shape = [
\	{'word': 'box'           , 'kind': '[S]'} ,
\	{'word': 'circle'        , 'kind': '[S]'} ,
\	{'word': 'diamond'       , 'kind': '[S]'} ,
\	{'word': 'doublecircle'  , 'kind': '[S]'} ,
\	{'word': 'doubleoctagon' , 'kind': '[S]'} ,
\	{'word': 'egg'           , 'kind': '[S]'} ,
\	{'word': 'ellipse'       , 'kind': '[S]'} ,
\	{'word': 'hexagon'       , 'kind': '[S]'} ,
\	{'word': 'house'         , 'kind': '[S]'} ,
\	{'word': 'invhouse'      , 'kind': '[S]'} ,
\	{'word': 'invtrapezium'  , 'kind': '[S]'} ,
\	{'word': 'invtriangle'   , 'kind': '[S]'} ,
\	{'word': 'octagon'       , 'kind': '[S]'} ,
\	{'word': 'plaintext'     , 'kind': '[S]'} ,
\	{'word': 'parallelogram' , 'kind': '[S]'} ,
\	{'word': 'point'         , 'kind': '[S]'} ,
\	{'word': 'polygon'       , 'kind': '[S]'} ,
\	{'word': 'record'        , 'kind': '[S]'} ,
\	{'word': 'trapezium'     , 'kind': '[S]'} ,
\	{'word': 'triangle'      , 'kind': '[S]'} ,
\	{'word': 'tripleoctagon' , 'kind': '[S]'} ,
\	{'word': 'Mcircle'       , 'kind': '[S]'} ,
\	{'word': 'Mdiamond'      , 'kind': '[S]'} ,
\	{'word': 'Mrecord'       , 'kind': '[S]'} ,
\	{'word': 'Msquare'       , 'kind': '[S]'} ,
\	]

let s:arrowhead =  [
\	{'word': 'normal'  , 'menu': 'arrowhead'} ,
\	{'word': 'dot'     , 'menu': 'arrowhead'} ,
\	{'word': 'odot'    , 'menu': 'arrowhead'} ,
\	{'word': 'inv'     , 'menu': 'arrowhead'} ,
\	{'word': 'invdot'  , 'menu': 'arrowhead'} ,
\	{'word': 'invodot' , 'menu': 'arrowhead'} ,
\	{'word': 'none'    , 'menu': 'arrowhead'} ,
\	]

" More colornames are available but make the menu too long.
let s:color =  [
\	{'word': '#000000'     , 'kind': '[C]'} ,
\	{'word': '0.0 0.0 0.0' , 'kind': '[C]'} ,
\	{'word': 'beige'       , 'kind': '[C]'} ,
\	{'word': 'black'       , 'kind': '[C]'} ,
\	{'word': 'blue'        , 'kind': '[C]'} ,
\	{'word': 'brown'       , 'kind': '[C]'} ,
\	{'word': 'cyan'        , 'kind': '[C]'} ,
\	{'word': 'gray'        , 'kind': '[C]'} ,
\	{'word': 'gray[0-100]' , 'kind': '[C]'} ,
\	{'word': 'green'       , 'kind': '[C]'} ,
\	{'word': 'magenta'     , 'kind': '[C]'} ,
\	{'word': 'orange'      , 'kind': '[C]'} ,
\	{'word': 'orchid'      , 'kind': '[C]'} ,
\	{'word': 'red'         , 'kind': '[C]'} ,
\	{'word': 'violet'      , 'kind': '[C]'} ,
\	{'word': 'white'       , 'kind': '[C]'} ,
\	{'word': 'yellow'      , 'kind': '[C]'} ,
\	]

let s:font =  [
\	{'abbr': 'Courier'          , 'word': '"Courier"', 'kind': '[F]'},
\	{'abbr': 'Courier-Bold'     , 'word': '"Courier-Bold"', 'kind': '[F]'},
\	{'abbr': 'Courier-Oblique'  , 'word': '"Courier-Oblique"', 'kind': '[F]'},
\	{'abbr': 'Helvetica'        , 'word': '"Helvetica"', 'kind': '[F]'},
\	{'abbr': 'Helvetica-Bold'   , 'word': '"Helvetica-Bold"', 'kind': '[F]'},
\	{'abbr': 'Helvetica-Narrow' , 'word': '"Helvetica-Narrow"', 'kind': '[F]'},
\	{'abbr': 'Helvetica-Oblique', 'word': '"Helvetica-Oblique"', 'kind': '[F]'},
\	{'abbr': 'Symbol'           , 'word': '"Symbol"', 'kind': '[F]'},
\	{'abbr': 'Times-Bold'       , 'word': '"Times-Bold"', 'kind': '[F]'},
\	{'abbr': 'Times-BoldItalic' , 'word': '"Times-BoldItalic"', 'kind': '[F]'},
\	{'abbr': 'Times-Italic'     , 'word': '"Times-Italic"', 'kind': '[F]'},
\	{'abbr': 'Times-Roman'      , 'word': '"Times-Roman"', 'kind': '[F]'},
\	]

let s:style =  [
\	{'word': 'diagonals', 'kind': '[N]'},
\	{'word': 'filled',    'kind': '[N]'},
\	{'word': 'rounded',   'kind': '[N]'},
\	{'word': 'striped',   'kind': '[N]'},
\	{'word': 'wedged',    'kind': '[N]'},
\	{'word': 'tapered',   'kind': '[E]'},
\	{'word': 'bold',      'kind': '[E,N]'},
\	{'word': 'dashed',    'kind': '[E,N]'},
\	{'word': 'dotted',    'kind': '[E,N]'},
\	{'word': 'invis',     'kind': '[E,N]'},
\	{'word': 'solid',     'kind': '[E,N]'}
\	]

let s:dir =  [
\	{'word': 'forward'},
\	{'word': 'back'},
\	{'word': 'both'},
\	{'word': 'none'}
\	]

let s:port =  [
\	{'word': '_',   'menu': 'appropriate side or center (default)' },
\	{'word': 'c',   'menu': 'center'},
\	{'word': 'e'},
\	{'word': 'n'},
\	{'word': 'ne'},
\	{'word': 'nw'},
\	{'word': 's'},
\	{'word': 'se'},
\	{'word': 'sw'},
\	{'word': 'w'},
\	]

let s:rank =  [
\	{'word': 'same'},
\	{'word': 'min'},
\	{'word': 'max'},
\	{'word': 'source'},
\	{'word': 'sink'}
\	]

let s:rankdir =  [
\	{'word': 'BT'},
\	{'word': 'LR'},
\	{'word': 'RL'},
\	{'word': 'TB'},
\	]

let s:just =  [
\	{'word': 'centered'},
\	{'word': 'l'},
\	{'word': 'r'}
\	]

let s:loc =  [
\	{'word': 'b', 'menu': 'bottom'},
\	{'word': 'c', 'menu': 'center'},
\	{'word': 't', 'menu': 'top'},
\	]

let s:boolean =  [
\	{'word': 'true'},
\	{'word': 'false'}
\	]

function! graphviz#data#candidates() abort
  return s:attrs + s:shape + s:arrowhead + s:color + s:font + s:style
        \ + s:dir + s:port + s:rank + s:rankdir + s:just + s:loc + s:boolean
endfunction
