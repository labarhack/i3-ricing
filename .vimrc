" -----------------------------------------------------------------------------
"  custom settings
" ----------------------------------------------------------------------------

" swap file in a smart place
set dir=~/tmp/vim
set undodir=~/tmp/vim
set undofile

" themes
set background=light
set t_Co=256
colorscheme default

syntax on
set nocompatible                " choose no compatibility with legacy vi
"set nu                          " line number
"set autowrite                   " save file
"set spell                       " set spell checker set nospell to remove
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set wrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital 
""extra
set nocompatible

filetype indent on
set autoindent
set smartindent
"set lbr
set laststatus=2              " barre de status always visible
set statusline=\ %<%f%h%m%r%=%{&ff}\ %l,%c%V\ %P
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\%l/%L:%c


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction

" line number
set numberwidth=10
set cpoptions+=n
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


" underline
set cursorline

" history storing
" au BufReadPost * call ReadUndo()
" au BufWritePost * call WriteUndo()
" func ReadUndo()
"   if filereadable(expand('%:h'). '/UNDO/' . expand('%:t'))
"     rundo %:h/UNDO/%:t
"   endif
" endfunc
" func WriteUndo()
"   let dirname = expand('%:h') . '/UNDO'
"   if !isdirectory(dirname)
"     call mkdir(dirname)
"   endif
"   wundo %:h/UNDO/%:t 
" endfunc



"" custom commands
" ln show or hide line numbers
cmap ln set invnumber<CR>
