"==== Read me first ====

" iswanghao's vimrc
" Hao Wang (http://member.acm.org/~iswanghao)
" GitHub repo https://github.com/iswanghao/dotVim

" For installation of the .vim config, check https://github.com/iswanghao/dotVim/blob/master/README.txt


"==== For pathogen.vim (https://github.com/tpope/vim-pathogen) ====

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"==== System config ====

set nocompatible

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set smartindent       "Automatically indent when adding a curly bracket,etc

"Show editing mode
set showmode

"Don't want the screen flash caused by 'visualbell' option
set noerrorbells
"Error bells are displayed visually
"set visualbell

"Spelling
if v:version >= 700
	" Enable spell check for text and tex files
	autocmd BufNewFile, BufRead *.txt spell spelllang=en
	autocmd BufNewFile, BufRead *.tex spell spelllang=en
endif

"==== Visual Effects ====

set lines=35 columns=99  "Basic layout
" Font. Very important.
if has('win32') || has('win64')
 set guifont=Courier:h15:cANSI
elseif has('unix')
 let &guifont="Courier 15"
endif

syntax on	      "Enable syntax highlighting

colorscheme torte     

"==== Key shortcuts ====

" To save, press ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

""""""""""For tabs """""""""""
" To open a new tab
nmap <C-t> :tabnew<CR> "might clash with 'used for jumping to previous tags [exuberant ctags]'
imap <C-t> <Esc>:tabnew<CR>
" To tab through differnt tabs
nmap <C-Tab> gt  "might clash with 'captured by KDE itself to switch workspace'
imap <C-Tab> <Esc>gt
nmap <C-S-Tab> gT
imap <C-S-Tab> <Esc>gT
" To close a tab
map <C-x> <Esc>:tabclose<CR>
"""""""""End of For tabs """""

"==== Add-ons ====

"""""""""""""""For Vim-LaTex"""""""""""""""""""""""
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
""""""""""""""End of For Vim-LaTex""""""""""""""""""""""


