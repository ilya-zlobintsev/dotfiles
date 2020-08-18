call plug#begin(stdpath('data') . '/plugged') 
    Plug 'neovim/nvim-lsp'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-lsp'
    Plug 'preservim/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'benmills/vimux'
    Plug 'preservim/nerdtree'
    Plug 'ncm2/float-preview'
    Plug 'fcpg/vim-fahrenheit'
    Plug 'chriskempson/base16-vim'
call plug#end()

let g:deoplete#enable_at_startup = 1
"
"let g:airline_extensions = []
"let g:airline_highlighting_cache = 1

let g:float_preview#docked=0

lua << EOF
local nvim_lsp = require'nvim_lsp'
nvim_lsp.rust_analyzer.setup{
    completion = {
        addCallArgumentSnippets = false;
    }
}
EOF

"nvim_lsp.rust_analyzer.setup{
"    rust-analyzer.completion.addCallArgumentSnippets = false;
"}
"lua require'nvim_lsp'.pyls.setup{}
"lua require'nvim_lsp'.sourcekit.setup{}
"
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
"
"autocmd StdinReadPre * let s:std_in=1

function FormatRust()
    :silent !rustfmt %
    :e
endfunction

autocmd BufWritePost *.rs call FormatRust()


set completeopt-=preview
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

nnoremap <F10> :source ~/.config/nvim/init.vim<CR> :PlugClean<CR> :PlugInstall<CR>
nnoremap <F8> :NERDTreeToggle<CR>
nnoremap <F4> :e! %<CR>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

autocmd FileType rust map <F5> :VimuxRunCommand "cargo run"<CR>
"autocmd FileType python map <F5> :VimuxRunCommand "python main.py"<CR>
"autocmd FileType rust map <F5> :!cargo run<CR>
"autocmd FileType python map <F5> :!python main.py<CR>
autocmd FileType rust :set makeprg=cargo\ run
"map <F5> :make<CR>
"
map <C-O> :e#<CR>
	
set clipboard+=unnamedplus
set hidden

set tabstop=4
set shiftwidth=4
set expandtab

set signcolumn=yes
set autowrite
"set number

set termguicolors
"colorscheme base16-default-dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
