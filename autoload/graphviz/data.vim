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
\	{'word': 'box'           , 'kind': 'Shape'} ,
\	{'word': 'circle'        , 'kind': 'Shape'} ,
\	{'word': 'diamond'       , 'kind': 'Shape'} ,
\	{'word': 'doublecircle'  , 'kind': 'Shape'} ,
\	{'word': 'doubleoctagon' , 'kind': 'Shape'} ,
\	{'word': 'egg'           , 'kind': 'Shape'} ,
\	{'word': 'ellipse'       , 'kind': 'Shape'} ,
\	{'word': 'hexagon'       , 'kind': 'Shape'} ,
\	{'word': 'house'         , 'kind': 'Shape'} ,
\	{'word': 'invhouse'      , 'kind': 'Shape'} ,
\	{'word': 'invtrapezium'  , 'kind': 'Shape'} ,
\	{'word': 'invtriangle'   , 'kind': 'Shape'} ,
\	{'word': 'octagon'       , 'kind': 'Shape'} ,
\	{'word': 'plaintext'     , 'kind': 'Shape'} ,
\	{'word': 'parallelogram' , 'kind': 'Shape'} ,
\	{'word': 'point'         , 'kind': 'Shape'} ,
\	{'word': 'polygon'       , 'kind': 'Shape'} ,
\	{'word': 'record'        , 'kind': 'Shape'} ,
\	{'word': 'trapezium'     , 'kind': 'Shape'} ,
\	{'word': 'triangle'      , 'kind': 'Shape'} ,
\	{'word': 'tripleoctagon' , 'kind': 'Shape'} ,
\	{'word': 'Mcircle'       , 'kind': 'Shape'} ,
\	{'word': 'Mdiamond'      , 'kind': 'Shape'} ,
\	{'word': 'Mrecord'       , 'kind': 'Shape'} ,
\	{'word': 'Msquare'       , 'kind': 'Shape'} ,
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
\	{'word': '#000000'     , 'kind': 'Color'} ,
\	{'word': '0.0 0.0 0.0' , 'kind': 'Color'} ,
\	{'word': 'beige'       , 'kind': 'Color'} ,
\	{'word': 'black'       , 'kind': 'Color'} ,
\	{'word': 'blue'        , 'kind': 'Color'} ,
\	{'word': 'brown'       , 'kind': 'Color'} ,
\	{'word': 'cyan'        , 'kind': 'Color'} ,
\	{'word': 'gray'        , 'kind': 'Color'} ,
\	{'word': 'gray[0-100]' , 'kind': 'Color'} ,
\	{'word': 'green'       , 'kind': 'Color'} ,
\	{'word': 'magenta'     , 'kind': 'Color'} ,
\	{'word': 'orange'      , 'kind': 'Color'} ,
\	{'word': 'orchid'      , 'kind': 'Color'} ,
\	{'word': 'red'         , 'kind': 'Color'} ,
\	{'word': 'violet'      , 'kind': 'Color'} ,
\	{'word': 'white'       , 'kind': 'Color'} ,
\	{'word': 'yellow'      , 'kind': 'Color'} ,
\	]

let s:font =  [
\	{'abbr': 'Courier'           , 'word': '"Courier"'           , 'kind': 'Font'} ,
\	{'abbr': 'Courier-Bold'      , 'word': '"Courier-Bold"'      , 'kind': 'Font'} ,
\	{'abbr': 'Courier-Oblique'   , 'word': '"Courier-Oblique"'   , 'kind': 'Font'} ,
\	{'abbr': 'Helvetica'         , 'word': '"Helvetica"'         , 'kind': 'Font'} ,
\	{'abbr': 'Helvetica-Bold'    , 'word': '"Helvetica-Bold"'    , 'kind': 'Font'} ,
\	{'abbr': 'Helvetica-Narrow'  , 'word': '"Helvetica-Narrow"'  , 'kind': 'Font'} ,
\	{'abbr': 'Helvetica-Oblique' , 'word': '"Helvetica-Oblique"' , 'kind': 'Font'} ,
\	{'abbr': 'Symbol'            , 'word': '"Symbol"'            , 'kind': 'Font'} ,
\	{'abbr': 'Times-Bold'        , 'word': '"Times-Bold"'        , 'kind': 'Font'} ,
\	{'abbr': 'Times-BoldItalic'  , 'word': '"Times-BoldItalic"'  , 'kind': 'Font'} ,
\	{'abbr': 'Times-Italic'      , 'word': '"Times-Italic"'      , 'kind': 'Font'} ,
\	{'abbr': 'Times-Roman'       , 'word': '"Times-Roman"'       , 'kind': 'Font'} ,
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
\	{'word': 'BT', 'kind': 'Rankdir'},
\	{'word': 'LR', 'kind': 'Rankdir'},
\	{'word': 'RL', 'kind': 'Rankdir'},
\	{'word': 'TB', 'kind': 'Rankdir'},
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
