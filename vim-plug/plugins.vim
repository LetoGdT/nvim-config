call plug#begin("~/.config/nvim/plugged")
	Plug 'morhetz/gruvbox'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'itchyny/lightline.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'mbbill/undotree'
	Plug 'neoclide/coc.nvim', { 'branch': 'release'}
call plug#end()
