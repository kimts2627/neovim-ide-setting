## Vim을 Editor로 사용해 보자

#### Plugins

```
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
```

### Coc extensions & language servers

```
coc-prettier 9.3.1 ~/.config/coc/extensions/node_modules/coc-prettier
coc-html 1.6.1 ~/.config/coc/extensions/node_modules/coc-html
coc-graphql 0.0.1 ~/.config/coc/extensions/node_modules/coc-graphql
coc-tsserver 1.11.5 ~/.config/coc/extensions/node_modules/coc-tsserver
coc-json 1.6.1 ~/.config/coc/extensions/node_modules/coc-json
coc-css 1.3.0 ~/.config/coc/extensions/node_modules/coc-css
```

### Installation

```shell
# node 설치를 위한 nvm 설치!
brew install nvm

# nvm 으로 node 설치! (일단 latest)
nvm install node

# coc 설치를 위한 yarn 설치!
npm install -g yarn

# neovim 설치!
brew install neovim
```

### Config Setting

- `~/.config` directory에 `git clone <this repo>`
- nvim 실행 후 `:PlugInstall` 실행

### 기본 단축키(까먹을까봐)

- Ctrl + t >> nerdtree on/off toggle
- Ctrl + w >> window 전환


