call plug#begin(stdpath('data') . '/plugged') 
    Plug 'neovim/nvim-lsp' 
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-lsp'
    Plug 'nvim-lua/diagnostic-nvim'
    Plug 'preservim/nerdtree'
    Plug 'kien/ctrlp.vim'
    "Plug 'rafi/awesome-vim-colorschemes'
    Plug 'edersonferreira/dalton-vim'
    "Plug 'vim-python/python-syntax'
    "Plug 'christoomey/vim-tmux-navigator'
    "Plug 'benmills/vimux'
    Plug 'preservim/nerdtree'
    Plug 'ncm2/float-preview'
    Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
    Plug 'RishabhRD/popfix'
    "Plug 'RishabhRD/nvim-lsputils'
call plug#end()

