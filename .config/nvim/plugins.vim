call plug#begin('~/.vim/plugged')

Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'kjwon15/vim-transparent'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'

Plug '/usr/share/nvim/site/plugin'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

map <silent> <leader>R :source ~/.config/nvim/init.vim<CR> :PlugClean<CR> :PlugInstall<CR>
