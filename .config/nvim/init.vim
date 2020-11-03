if !exists('g:vscode')
    source ~/.config/nvim/plugins.vim
    source ~/.config/nvim/looks.vim
    source ~/.config/nvim/lsp.vim
    source ~/.config/nvim/rules.vim
    source ~/.config/nvim/navigation.vim
    
    nnoremap <F10> :source ~/.config/nvim/init.vim<CR> :PlugClean<CR> :PlugInstall<CR>
    nnoremap <F8> :NERDTreeToggle<CR>
    nnoremap <F4> :e! %<CR>
    
    "This unsets the "last search pattern" register by hitting return
    nnoremap <silent> <CR> <cmd>noh<CR>
    
    if has('nvim')
        autocmd TermOpen term://* startinsert
    endif
    autocmd FileType rust map <F5> :VimuxRunCommand "cargo run"<CR>
    "autocmd FileType rust map <silent> <F5> :term cargo run <CR>
    autocmd FileType python map <F5> :VimuxRunCommand "python main.py"<CR>
    "autocmd FileType rust map <F5> :!cargo run<CR>
    "autocmd FileType python map <F5> :!python main.py<CR>
    autocmd FileType rust :set makeprg=cargo\ run
    "map <F5> :make<CR>
    "
    map <C-O> :e#<CR>
endif
