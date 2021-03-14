luafile ~/.config/nvim/lsp.lua

" LSP keybinds
"nnoremap <silent> <gD> <Cmd>lua vim.lsp.buf.declaration()<CR>
"nnoremap <silent> <gd> <Cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> K <Cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> <gi> <Cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <gr> <Cmd>lua vim.lsp.buf.references()<CR>


" Completion menu keybinds
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <C-j>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

let g:completion_confirm_key = "\<Tab>"

" Inserts parantheses 
let g:completion_enable_auto_paren = 1

autocmd FileType html set tabstop=2
autocmd FileType html set shiftwidth=2
