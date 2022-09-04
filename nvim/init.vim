call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'

Plug 'mattn/emmet-vim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-live-grep-args.nvim'

Plug 'prettier/vim-prettier', {'do': 'yarn install'}

Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'

Plug 'kubejm/jest.nvim'


"Git
Plug 'akinsho/git-conflict.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end() "테마 변경
let g:gruvbox_contrast_dark="hard"
set background=dark
autocmd vimenter * colorscheme gruvbox
"general setting
set encoding=utf-8
set shiftwidth=2
set tabstop=2
set number

"coc setting
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> <A-Cr> <Plug>(coc-codeaction-cursor)

"nerdtree 단축키 설정
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Telescope 단축키 설정.
nnoremap <C-p> :Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"nvim 단축키 설정
map <Tab> :Prettier<CR>
