" Vimrc

" => General

" Set history max
set history=500

" Filetype plugins
filetype plugin on
filetype indent on

" Set numbers on
set number

" Cursor
set cursorline

" Set automatic reloading when files are changed externally
set autoread
au FocusGained,BufEnter * checktime

" Leader key mapping
let mapleader = "\\"

" Fast saving
nmap <leader>w :w!<cr>

" Tabular stuff
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" => Searching
set hlsearch
set ignorecase
set incsearch

" Visual mode search
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Clear search
nnoremap <CR> :let @/ = ""<CR>

" Helper functions
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Sourcing
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/conf.vim
