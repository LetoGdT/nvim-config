"Configuration pour b�po

" {W} -> [�]
" ----------
" On remappe W sur � :
noremap � w
noremap � W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n'est pas au d�but (da� / la�).
onoremap a� aw
onoremap a� aW
onoremap i� iw
onoremap i� iW
" Pour faciliter les manipulations de fen�tres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>
 
 " [HJKL] -> {CTSR}
 " ----------------
 " {cr} = � gauche / droite �
 noremap c h
 noremap r l
 " {ts} = � haut / bas �
 noremap t j
 noremap s k
 " {CR} = � haut / bas de l'�cran �
 noremap C H
 noremap R L
 " {TS} = � joindre / aide �
 noremap T J
 noremap S K
 " Corollaire : repli suivant / pr�c�dent
 noremap zs zj
 noremap zt zk
  
  " {HJKL} <- [CTSR]
  " ----------------
  " {J} = � Jusqu'� �            (j = suivant, J = pr�c�dant)
  noremap j t
  noremap J T
  " {L} = � Change �             (l = attend un mvt, L = jusqu'� la fin de ligne)
  noremap l c
  noremap L C
  " {H} = � Remplace �           (h = un caract�re slt, H = reste en � Remplace �)
  noremap h r
  noremap H R
  " {K} = � Substitue �          (k = caract�re, K = ligne)
  noremap k s
  noremap K S
  " Corollaire : correction orthographique
  noremap ]k ]s
  noremap [k [s
   
   " D�sambiguation de {g}
   " ---------------------
   " ligne �cran pr�c�dente / suivante (� l'int�rieur d'une phrase)
   noremap gs gk
   noremap gt gj
   " onglet pr�c�dant / suivant
   noremap gb gT
   noremap g� gt
   " optionnel : {gB} / {g�} pour aller au premier / dernier onglet
   noremap gB :exe "silent! tabfirst"<CR>
   noremap g� :exe "silent! tablast"<CR>
   " optionnel : {g"} pour aller au d�but de la ligne �cran
   noremap g" g0
    
    " <> en direct
    " ------------
    noremap � <
    noremap � >
     
     " Remaper la gestion des fen�tres
     " -------------------------------
     noremap wt <C-w>j
     noremap ws <C-w>k
     noremap wc <C-w>h
     noremap wr <C-w>l
     noremap wd <C-w>c
     noremap wo <C-w>s
     noremap wp <C-w>o
     noremap w<SPACE> :split<CR>
     noremap w<CR> :vsplit<CR>

"Remap de plugin
"
"
let mapleader=" "
nnoremap <silent> <C-N> :NERDTreeToggle<CR>

" " Map to open current file in NERDTree and set size
nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-u> :UndotreeToggle<CR>
nnoremap <silent> <C-T> :tabn<CR>
nnoremap <silent> <C-d> :tabclose<CR>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
tnoremap <silent> <Esc> <C-\><C-n>
