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


filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set ai                " auto indent
set expandtab         " Convert all tabs (<TAB>) to spaces (<SPACE>)
set mousemodel=popup_setpos  " Allows right click popup window
set nocompatible
set noerrorbells      " Don't want the screen flash caused by 'visualbell' option
set noautowrite       " Don't automatically write the file
set shiftround        " Indent/outdent to nearest tabstops
set shiftwidth=4      " Indent/outdent by 4 columns
set showmode          " Show editing mode
set showcmd           " Show command that is being typed
set sm                " show matching parenthesis
set smartindent       " Automatically indent when adding a curly bracket,etc
set tabstop=4         " Indentation levels every four columns
set writebackup       " Make temp backup while overwrite file

"""" For tags """"
   "in order to use tags, make sure use ctags to generate tag file, e.g.,
   "ctags -f ~/.tags -R $JAVA_HOME/src
   "ctags -f ~/.tags -R /usr/lib/jvm/java-7-openjdk-common/src
"set tags=~/.tags
"""" End of For tags """"

"""" For use of taglist plugin """"
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
let tlist_sql_settings = 'sql;P:package;t:table'
let tlist_ant_settings = 'ant;p:Project;r:Property;t:Target'
"""" End of For use of taglist plugin """"

"Auto completion
   "use with tags
set complete=.,w,b,u,t,i

"==== Visual Effects ====

set lines=45 columns=69  "Basic layout
" Font. 
if has('win32') || has('win64')
 set guifont=Courier:h15:cANSI
else
" let os=substitute(system('uname'), '\n', '', '')
" if os == 'Darwin' || os == 'Mac'
    set guifont=Courier:h16
" elseif os == 'Linux'
"    set guifont=
"endif
" let &guifont="Courier 25"
endif


"colorscheme torte     
colorscheme phd

"syntax on	      "Enable syntax highlighting
syntax enable

" set folding method
set foldmethod=indent

"""" For Java """"
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
"""" End of For Java """"

"==== Key shortcuts ====

" To save, press ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

""""For tabs """"
" To open a new tab
    "might clash with 'used for jumping to previous tags [exuberant ctags]'
nmap <C-t> :tabnew<CR> 
imap <C-t> <Esc>:tabnew<CR>
" To tab through differnt tabs
    "might clash with 'captured by KDE itself to switch workspace'
nmap <C-Tab> gt  
imap <C-Tab> <Esc>gt
nmap <C-S-Tab> gT
imap <C-S-Tab> <Esc>gT
" To close a tab
map <C-x> <Esc>:tabclose<CR>
""""End of For tabs """"

"==== Add-ons ====

""""For Vim-LaTex""""
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. ght clash with 'captured by KDE itself to switch
" workspace'This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = 'Preview'
""""End of For Vim-LaTex""""

" Spell check for Latex files, note that the SpellChecker is used as the
" built-in spellchecking is problematic with the syntax highlighting of tex
" files
autocmd BufRead,BufNewFile  *.tex SPC 


