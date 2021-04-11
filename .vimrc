call plug#begin('~/.vim/plugged')
	Plug 'arcticicestudio/nord-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'

	"Java
	Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

let g:lightline = {'colorscheme': 'nord',}

colorscheme nord
set laststatus=2
highlight Visual cterm=reverse ctermbg=None
autocmd FileType java setlocal omnifunc=javacomplete#Complete
set nu rnu
map <silent> <C-n> :NERDTreeToggle<CR>
