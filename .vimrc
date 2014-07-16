" ==== Basic Functionality ====
set vb t_vb=      " turning off fucking bells
set nocompatible  " stops vim from behaving in a strictly vi compatible way
set mouse=a

map <F2> <Esc>:call ToggleMouse()<CR>

function! ToggleMouse()
    if &mouse=='a'
        set paste
        set mouse=
        echo "Mouse usage disabled"
    else
        set nopaste
        set mouse=a
        echo "Mouse usage enabled"
    endif
endfunction

" ==== Status line ====
set laststatus=2
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" ==== Indentation, tabs, and spaces ==== 
set expandtab     " when you hit tab, spaces happen
set shiftwidth=4  " indent by one column when hitting tab
set ai            " auto indent
set copyindent    " copy indent from previous line
set ts=4          " number of spaces a tab counts for
set cino=>4(0       " set how indent happens in C source
filetype indent on

set bs=2          " What happens when you hit backspace (same as ':set bs=indent,eol,start')
set tw=0          " text-width: auto wrapping
set softtabstop=4 " backspace removes 4 spaces

" set foldmethod=indent
set scrolloff=5
set ruler
set number
set numberwidth=4

" ==== Searching options ====
set incsearch     " search as you type
set hlsearch

" ==== Coloring options ====
set background=light
syntax on
hi comment ctermfg=darkcyan
hi todo ctermbg=red
hi todo ctermfg=white

" ==== Tab options ====
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" ==== probably stuff from 15-213 ====
"hi link asmx86Commentc comment
"hi link asmx86Commentcpp comment
"hi link asmx86Commentcxx comment
"hi link asmx86Commenthash comment
"hi link asmx86Commenthash comment
"hi link asmx86Label label
"hi asmx86opcode ctermfg=yellow
"hi link asmx86opcode_io asmx86opcode
"hi link asmx86Opcode_br asmx86opcode
"hi link asmx86Opcode_mv asmx86opcode
"hi link asmx86Opcode_pre asmx86opcode
"hi cAssert ctermfg=yellow
"hi cAttrib ctermfg=cyan
"hi cCompilerHint ctermfg=grey
"hi identifier ctermfg=green
"hi search ctermbg=blue
"hi search ctermfg=white
"hi LineNr ctermfg=darkgrey
"hi Folded ctermfg=darkgrey
"hi Folded ctermbg=darkgrey
