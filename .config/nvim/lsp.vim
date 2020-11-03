lua require'nvim_lsp'.pyls.setup{on_attach=require'diagnostic'.on_attach}
lua require'nvim_lsp'.rust_analyzer.setup{on_attach=require'diagnostic'.on_attach}
"lua require'nvim_lsp'.omnisharp.setup{}

let g:diagnostic_show_sign = 0
autocmd CursorHold * lua vim.lsp.util.show_line_diagnostics()
set updatetime=750


inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

"nnoremap <silent> <M-d> <cmd>NextDiagnostic<CR>
"nnoremap <silent> <M-S-d> <cmd>PrevDiagnostic<CR>

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
"nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

function FormatRust()
    :silent !rustfmt %
    :e
endfunction

autocmd BufWritePost *.rs call FormatRust()

set completeopt-=preview
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

"lua <<EOF
"vim.lsp.callbacks['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
"vim.lsp.callbacks['textDocument/references'] = require'lsputil.locations'.references_handler
"vim.lsp.callbacks['textDocument/definition'] = require'lsputil.locations'.definition_handler
"vim.lsp.callbacks['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
"vim.lsp.callbacks['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
"vim.lsp.callbacks['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
"vim.lsp.callbacks['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
"vim.lsp.callbacks['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
"EOF
"
"nnoremap <silent> <M-CR> :lua vim.lsp.buf.code_action()<CR>
