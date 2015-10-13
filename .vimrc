"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stuff I have decided I don't like
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set ignorecase -- turns out, I like case sensitivity 
"set list " turns out, I don't like listchars -- show chars on end of line, whitespace, etc
"autocmd GUIEnter * :simalt ~x " having it auto maximize the screen is annoying
"autocmd BufEnter * :lcd %:p:h -- switch to current dir (breaks some scripts)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=5000 " How many lines of history to remember
set cf " enable error files and error jumping
set clipboard+=unnamed " turns out I do like is sharing windows clipboard
set ffs=unix,dos,mac " support all three, in this order
filetype plugin on " load filetype plugins
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them not be

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on " syntax highlighting on
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set backup " make backup file
"set backupdir=/home/alex/.vim/vimfiles/backup " where to put backup file
set makeef=error.err " When using make, where should it dump the file
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lsp=0 " space it out a little more (easier to read)
set wildmenu " turn on wild menu
set ruler " Always show current positions along the bottom 
set cmdheight=2 " the command bar is 2 high
set number " turn on line numbers
set lz " do not redraw while running macros (much faster) (LazyRedraw)
set hid " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt 
set report=0 " tell us when anything is changed via :...
set noerrorbells " don't make noise
" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set matchtime=10
set mat=5 " how many tenths of a second to blink matching brackets for
set hlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list
set noerrorbells " no noises
set statusline=%F%m%r%h%w\ [format=%{&ff}]\ [type=%Y]\ [ascii=\%03.3b]\ [hex=\%02.2B]\ [pos=%04l,%04v][%p%%]\ [len=%L]
set laststatus=2 " always show the status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrqn " See Help (complex)
set ai " autoindent
set cindent " do c-style indenting
set tabstop=4 " tab spacing (settings below are just to unify it)
set softtabstop=4 " unify
set shiftwidth=4 " unify 
set noexpandtab " real tabs please!
set nowrap " do not wrap lines  
set smarttab " use tabs at the start of a line, spaces elsewhere
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"    Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding
set foldmethod=indent " Make folding indent sensitive
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff
nnoremap <space> za
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Win Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWidth=35 " How wide should it be( pixels)
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' " What windows should it

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = $VIM.'\ctags.exe' " Location of ctags
let Tlist_Sort_Type = "name" " order by 
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Compart_Format = 1 " show small meny
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 0 " Do not close tags for other files
let Tlist_Enable_Fold_Column = 0 " Do not show folding tree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplModSelTarget = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Perl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let perl_extended_vars=1 " highlight advanced perl vars inside strings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Select range, then hit :SuperRetab($width) - by p0g and FallingCow
function! SuperRetab(width) range
        silent! exe a:firstline . ',' . a:lastline . 's/\v%(^ *)@<= {'. a:width .'}/\t/g'
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> <ESC>ggVG:call SuperRetab()<left>
map <F12> ggVGg? " encypt the file (toggle)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
au BufNewFile,BufRead *.asp :set ft=aspjscript " all my .asp files ARE jscript
au BufNewFile,BufRead *.tpl :set ft=html " all my .tpl files ARE html
au BufNewFile,BufRead *.hta :set ft=html " all my .tpl files ARE html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful abbrevs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"colorscheme colorful256
"t_Co=256
iab usaco_heads /*<CR>ID: streamk1<CR>LANG: C++<CR>TASK:<CR>*/<CR><CR>#include <cstdio><CR>#include <cstdlib><CR>

"for html tag close-ing
let g:closetag_html_style=1

let g:netrw_listtyle=3

execute pathogen#infect()

:so ~/.vim/vtreeexplorer.vim
:so ~/.vim/NERD_tree/plugin/NERD_tree.vim
:so ~/.vim/NERD_tree/nerdtree_plugin/exec_menuitem.vim
:so ~/.vim/NERD_tree/nerdtree_plugin/fs_menu.vim


:so ~/.vim/omnicppcomplete/autoload/omni/cpp/settings.vim
:so ~/.vim/omnicppcomplete/autoload/omni/common/debug.vim
:so ~/.vim/omnicppcomplete/autoload/omni/common/utils.vim
:so ~/.vim/omnicppcomplete/autoload/omni/cpp/complete.vim
:so ~/.vim/omnicppcomplete/autoload/omni/cpp/includes.vim
:so ~/.vim/omnicppcomplete/autoload/omni/cpp/items.vim
:so ~/.vim/omnicppcomplete/autoload/omni/cpp/namespaces.vim
:so ~/.vim/omnicppcomplete/autoload/omni/cpp/tokenizer.vim
:so ~/.vim/omnicppcomplete/autoload/omni/cpp/utils.vim
:so ~/.vim/omnicppcomplete/autoload/omni/cpp/maycomplete.vim
:so ~/.vim/omnicppcomplete/after/ftplugin/c.vim
:so ~/.vim/omnicppcomplete/after/ftplugin/cpp.vim

:so ~/.vim/elflord.vim
:so ~/.vim/colors/molokai.vim
colorscheme elflord

set encoding=utf-8

highlight RedundantWhitespace ctermbg=blue guibg=blue
match RedundantWhitespace /[\t]\+[ ]\+[\t]\+\|[ ]\+[\t]\+[ ]\+\|[\t]\+[ ]\+\|[ ]\+[\t]\+\|^[ ]\+\|[\t ]\+$/

set directory=$HOME/.vim/swap_files//

vmap <F8> :w !curl -X POST -s -d "`cat`" http://dev01:18580/documents \| awk -F '"' '{print "http://dev01:18580/"$4}' \| xsel -b<CR>
