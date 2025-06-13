" Set line numbers and relative numbering
set number
set relativenumber

" Show matching brackets/parentheses
set showmatch

" Enable mouse support
set mouse=a

" Use spaces instead of tabs for indentation
set expandtab
set shiftwidth=2
set tabstop=2

" Highlight current line
set cursorline

" Enable basic auto-indentation
set autoindent

" Remove trailing whitespace on save
autocmd BufWritePre <buffer> :%s/\s\+$//e

" Improve search highlighting
set hlsearch
set incsearch

" Set colorscheme and syntax color
syntax on
colorscheme slate
" hi Normal ctermbg=NONE
