call plug#begin('~/.config/nvim/plugged')
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or latest tag
" Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" Or build from source code by use yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'

Plug 'mattn/emmet-vim'

Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'prettier/vim-prettier', {'do': 'yarn install'}

call plug#end() "테마 변경
let g:gruvbox_contrast_dark="hard"
set background=dark
autocmd vimenter * colorscheme gruvbox

"nerdtree 단축키 설정
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"nvim 단축키 설정
map <Tab-Space> :Prettier<CR>
