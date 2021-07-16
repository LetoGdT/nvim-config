"Configuration pour bépo

" {W} -> [É]
" ----------
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n'est pas au début (daé / laé).
onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>
 
 " [HJKL] -> {CTSR}
 " ----------------
 " {cr} = « gauche / droite »
 noremap c h
 noremap r l
 " {ts} = « haut / bas »
 noremap t j
 noremap s k
 " {CR} = « haut / bas de l'écran »
 noremap C H
 noremap R L
 " {TS} = « joindre / aide »
 noremap T J
 noremap S K
 " Corollaire : repli suivant / précédent
 noremap zs zj
 noremap zt zk
  
  " {HJKL} <- [CTSR]
  " ----------------
  " {J} = « Jusqu'à »            (j = suivant, J = précédant)
  noremap j t
  noremap J T
  " {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
  noremap l c
  noremap L C
  " {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
  noremap h r
  noremap H R
  " {K} = « Substitue »          (k = caractère, K = ligne)
  noremap k s
  noremap K S
  " Corollaire : correction orthographique
  noremap ]k ]s
  noremap [k [s
   
   " Désambiguation de {g}
   " ---------------------
   " ligne écran précédente / suivante (à l'intérieur d'une phrase)
   noremap gs gk
   noremap gt gj
   " onglet précédant / suivant
   noremap gb gT
   noremap gé gt
   " optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
   noremap gB :exe "silent! tabfirst"<CR>
   noremap gÉ :exe "silent! tablast"<CR>
   " optionnel : {g"} pour aller au début de la ligne écran
   noremap g" g0
    
    " <> en direct
    " ------------
    noremap « <
    noremap » >
     
     " Remaper la gestion des fenêtres
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
