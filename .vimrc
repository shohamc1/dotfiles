call plug#begin('~/.vim/plugged')
	Plug 'arcticicestudio/nord-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'

	"Java
	Plug 'artur-shaik/vim-javacomplete2'

	"Code completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"coc setup
"" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

let g:lightline = {'colorscheme': 'nord',}

colorscheme nord
set laststatus=2
highlight Visual cterm=reverse ctermbg=None
autocmd FileType java setlocal omnifunc=javacomplete#Complete
set nu rnu
map <silent> <C-n> :NERDTreeToggle<CR>
