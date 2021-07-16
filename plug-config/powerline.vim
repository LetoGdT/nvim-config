let g:lightline = {
  \     'colorscheme': 'powerlineish',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['gitbranch', 'readonly', 'filename', 'modified'], ],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     },
  \     'component_function': {
  \         'gitbranch': 'FugitiveHead'
  \     },
  \ }
