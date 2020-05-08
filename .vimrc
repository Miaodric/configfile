" From http://blog.csdn.net/redguardtoo/article/details/1172136  by redguardtoo
" Demo: http://www.cnblogs.com/zhongcq/p/3642794.html#toc_1.17
" Originally by Amix - http://amix.dk/
" Maintainer: Amir Salihefendic <amix3k at gmail.com>
" Version: 2.0
" Last Change: 12/08/06 13:39:28
" Fixed win32 compatible by: redguardtoo <chb_sh at gmail.com>
" This vimrc file is tested on platforms like win32,linux, cygwin,mingw
" and vim7.0, vim6.4, vim6.1, vim5.8.9 by redguardtoo
"
" Tip:
" If you find anything that you can't understand than do this:
" help keyword OR helpgrep keyword
" Example:
" Go into command-line mode and type helpgrep nocompatible, ie.
" :helpgrep nocompatible
" then press <leader>c to see the results, or :botright cw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Default shortcuts can be referred by http://blog.csdn.net/donahue_ldz/article/details/17139361
"Get out of VI's compatible mode..
set noesckeys
"-->vundle YCM
set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'tenfyzhong/tagbar-proto.vim'
Bundle 'pseewald/nerdtree-tagbar-combined'
Bundle 'uarun/vim-protobuf'
Bundle 'majutsushi/tagbar'
"Bundle 'taglist.vim'
"Bundle 'winmanager'

Bundle 'gmarik/vundle'
" highlight in tmux
Bundle 'keith/tmux.vim'
Bundle 'marijnh/tern_for_vim'


filetype plugin indent on     " required!

" My Bundles here:  /* 插件配置格式 */
"   
" vim-scripts repos  （vim-scripts仓库里的，按下面格式填写）
Bundle 'lookupfile'
Bundle 'genutils'
Bundle 'xml.vim'
Bundle 'indentpython.vim'
"http://www.cnblogs.com/fstang/archive/2012/12/05/2803964.html
"snipMate用于补全很多模式
"这个插件只用了一个键，就是TAB键，比如对一个C/C++文件，输入inc，再按TAB键，就会填充为#include
"<stdio.h>，同时stdio被选中，以备修改。还有其他的，如main+TAB,
"wh+TAB,do+TAB,for+TAB,forr+TAB,if+TAB……具体可以看snippets文件夹下的那些文件，比如c.snippets
"snippets已经被UltiSnips代替
"Bundle 'snipMate'
Bundle 'a.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'Mark'
Bundle 'echofunc.vim'
Bundle 'Visual-Mark'
Bundle 'grep.vim'
Bundle 'L9'
"Bundle 'FuzzyFinder'
"Supertab容易引起tab只是补全无法缩进的问题
"Bundle 'SuperTab'
Bundle 'ctags.vim'
Bundle 'cscope.vim'
Bundle 'CCTree'
Bundle 'DoxygenToolkit.vim'
"优先用下面的那个Bundle 'SirVer/ultisnips'
"Bundle 'UltiSnips'
Bundle 'ShowMarks'
Bundle 'python.vim'
Bundle 'XML-Folding'

" original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-pathogen'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'nvie/vim-flake8'
Bundle 'slim-template/vim-slim'
"Bundle 'brookhong/DBGPavim'
"Bundle 'joonty/vdebug'
"For python fold recommended by
"https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
Bundle 'tmhedberg/SimpylFold'
"Javascript highlight
Bundle 'pangloss/vim-javascript'
Bundle 'gregsexton/MatchTag'
Bundle 'davidhalter/jedi-vim'
Bundle 'jiangmiao/auto-pairs'
"Bundle 'fishman/ctags'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Plugin 'fatih/vim-go'
Plugin 'Blackrush/vim-gocode'

" non github repos   (非上面两种情况的，按下面格式填写)
"Bundle 'git://git.wincent.com/command-t.git'
"当你自己写了个定制的插件，放在本地的时候


" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" python 模板在https://gist.github.com/locojay/4950253

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
if !empty(glob("./.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
endif
"<---YCM
set nocompatible
set autowrite

function! MySys()
if has("win32")
return "win32"
elseif has("unix")
return "unix"
else
return "mac"
endif
endfunction
"Set shell to be bash
if MySys() == "unix" || MguioptionsySys() == "mac"
set shell=bash
else
"I have to run win32 python without cygwin
"set shell=E:cygwiinsh
endif

"Sets how many lines of history VIM har to remember
set history=400

"Enable filetype plugin
filetype off
if has("eval") && v:version>=600
filetype plugin on
filetype indent on
endif

"Set to auto read when a file is changed from the outside
if exists("&autoread")
set autoread
endif

"Have the mouse enabled all the time:
set mouse=cv

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"http://www.cnblogs.com/ifantastic/p/3524751.html
"set term=ansi

" Use color syntax highlighting.
syntax on

" Color specifications. Change them as you would like.

hi Comment  term=none   ctermfg=gray    guifg=Gray
hi Constant term=underline  ctermfg=cyan    guifg=Cyan
hi Identifier   term=underline  ctermfg=green   guifg=White
hi Statement    term=bold   ctermfg=white   guifg=White
hi PreProc  term=underline  ctermfg=magenta guifg=Magenta
hi Type     term=underline  ctermfg=white   guifg=White
hi Special  term=bold   ctermfg=blue    guifg=Blue
hi Nontext  term=bold   ctermfg=red guifg=Red
hi Normal   guifg=Yellow    guibg=#00007F
hi Normal   ctermfg=darkgreen

hi Comment      cterm=none  gui=none
hi Constant     cterm=bold  gui=none
hi Identifier   cterm=none  gui=none
hi Statement    cterm=bold  gui=none
hi PreProc      cterm=bold  gui=none
hi Type         cterm=bold  gui=none
hi Special      cterm=bold  gui=none
hi NonText  cterm=bold  gui=none

" Special highlighting for XML
hi xmlTag ctermfg=blue cterm=bold guifg=white
hi xmlTagName ctermfg=blue cterm=bold guifg=white
hi xmlEndTag ctermfg=blue cterm=bold guifg=white
set guifont=Droid\ Sans\ Mono\ 14

"internationalization
"I only work in Win2k Chinese version
if has("multi_byte")
"set tenc=utf-8,gbk
set fencs=utf-8,gbk
set termencoding=utf-8
set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,chinese
set fileencoding=gb18030
"set fileencodings=utf-8,gb18030,utf-16,big5
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
endif

"if you use vim in tty,
"'uxterm -cjk' or putty with option 'Treat CJK ambiguous characters as wide' on
if exists("&ambiwidth")
set ambiwidth=double
endif

if has("gui_running")
"set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

if MySys()=="win32"
"start gvim maximized
if has("autocmd")
au GUIEnter * simalt ~x
endif
endif
"let psc_style='cool'
"sudo cp ~/.vim/color/desert_my.vim /usr/share/vim/vim73/colors/
colorscheme desert
else
"set background=dark
colorscheme desert
endif

"Some nice mapping to switch syntax (useful if one mixes different languages in one file)
map <leader>1 :set syntax=cheetah<cr>
map <leader>2 :set syntax=xhtml<cr>
map <leader>3 :set syntax=python<cr>
map <leader>4 :set ft=javascript<cr>
map <leader>$ :syntax sync fromstart<cr>

"Highlight current
if has("gui_running")
if exists("&cursorline")
set cursorline
endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fileformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetype
"Use Unix as the standard file type
set ffs=unix,dos,mac

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
"Me: Cursor is 7 lines from the bottom line
set so=7

"Turn on WiLd menu
"Me: :command will be prompted
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=1

"Show line number
set nu

"Do not re-draw, when running macros.. lazyredraw
set lz

"A buffer becomes hidden when it is abandoned
"ME: Then diffierent buffers can be switched
set hid

"Set backspace
"indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
"eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
"start：要想删除此次插入前的输入，需设置这个
set backspace=eol,start,indent

"Bbackspace and cursor keys can jump between lines
set whichwrap+=<,>,h,l

"Ignore case when searching
"set ignorecase
set incsearch

"Set magic on
"据说很复杂
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracet
set showmatch

"How many tenths of a second to blink
set mat=4

"Highlight search thing
set hlsearch

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
"Format the statusline
" Nice statusbar
set laststatus=1
set statusline=
set statusline+=%2*%-3.3n%0*/ " buffer number
set statusline+=%f/ " file name
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=[
if v:version >= 600
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding}, " encoding
endif
set statusline+=%{&fileformat}] " file format
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
set statusline+=/ %{VimBuddy()} " vim buddy
endif
set statusline+=%= " right align
set statusline+=%2*0x%-8B\ " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" special statusbar for special window
if has("autocmd")
    au FileType qf
\ if &buftype == "quickfix" |
\ setlocal statusline=%2*%-3.3n%0* |
\ setlocal statusline+=\ \[Compiler\ Messages\] |
\ setlocal statusline+=%=%2*\ %<%P |
\ endif

fun! FixMiniBufExplorerTitle()
    if "-MiniBufExplorer-" == bufname("%")
        setlocal statusline=%2*%-3.3n%0*
        setlocal statusline+=\[Buffers\]
        setlocal statusline+=%=%2*\ %<%P
    endif
endfun

if v:version>=600
	au BufWinEnter *
				\ let oldwinnr=winnr() |
				\ windo call FixMiniBufExplorerTitle() |
				\ exec oldwinnr . " wincmd w"
endif
endif

" Nice window title
if has('title') && (has('gui_running') || &title)
set titlestring=
set titlestring+=%f/ " file name
set titlestring+=%h%m%r%w " flag
" program name and cwd
set titlestring+=\ -\ %{v:progname}
set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around and tab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Smart way to move btw. window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Actually, the tab does not switch buffers, but my arrow
"Bclose function ca be found in "Buffer related" section
map <leader>bd :close<cr>
"map <down> <leader>bd
"Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

"Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

if v:version>=700
set switchbuf=usetab
endif

if exists("&showtabline")
set stal=2
endif

"Moving fast to front, back and 2 sides ;)
"MOre details:
inoremap <M-$> <esc>$a
inoremap <M-0> <esc>0i
"The following 2 is for MAC
inoremap <D-$> <esc>$a
inoremap <D-0> <esc>0i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Autocommand
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Switch to current dir
map <leader>cd :cd %:p:h<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
" 选中的部分加括号,$1自动加小括号
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
")
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $w <esc>`>a"<esc>`<i"<esc>
"imap <c-l> <esc>la
"imap <c-h> <esc>ha

"Map auto complete of (, ", ', [
"http://www.vim.org/tips/tip.php?tip_id=153
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrev
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Comment for C like language
if has("autocmd")
au BufNewFile,BufRead *.js,*.htc,*.c,*.tmpl,*.css ino $c /**<cr> **/<esc>O
endif

"My information
ia xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
"iab xname Amir Salihefendic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
"map 0 ^

"Move a line of text using control
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if MySys() == "mac"
nmap <D-j> <M-j>
nmap <D-k> <M-k>
vmap <D-j> <M-j>
vmap <D-k> <M-k>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command-line config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! Cwd()
let cwd = getcwd()
return "e " . cwd
endfunc

func! DeleteTillSlash()
let g:cmd = getcmdline()
if MySys() == "unix" || MySys() == "mac"
let g:cmd_edited = substitute(g:cmd, "(.*[/]).*", "", "")
else
let g:cmd_edited = substitute(g:cmd, "(.*[/]).*", "", "")
endif
if g:cmd == g:cmd_edited
if MySys() == "unix" || MySys() == "mac"
let g:cmd_edited = substitute(g:cmd, "(.*[/]).*/", "", "")
else
let g:cmd_edited = substitute(g:cmd, "(.*[/]).*[/]", "", "")
endif
endif
return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
return a:cmd . " " . expand("%:p:h") . "/"
endfunc

"cno $q <C->eDeleteTillSlash()<cr>
"cno $c e <C->eCurrentFileDir("e")<cr>
"cno $tc <C->eCurrentFileDir("tabnew")<cr>
cno $th tabnew ~/
cno $td tabnew ~/Desktop/

"Bash like
cno <C-A> <Home>
cno <C-E> <End>
cno <C-K> <C-U>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer realted
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast open a buffer by search for a name
"map <c-q> :sb

"Open a dummy buffer for paste
map <leader>q :e ~/buffer<cr>

""Restore cursor to file position in previous editing session
"set viminfo='10,"100,:20,%,n~/.viminfo

" Buffer - reverse everything ... :)
"map <F9> ggVGg?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off
set nobackup
set nowb
"set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
if exists("&foldenable")
set nofen
endif

if exists("&foldlevel")
set fdl=0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text option
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python script
set expandtab
"Sonic code style 0 and {} is introduced.
set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=2
set smarttab
set lbr
"set tw=500

""""""""""""""""""""""""""""""
" => Indent
""""""""""""""""""""""""""""""
"Auto indent
set ai

"Smart indet
set si

"C-style indenting
set cindent

"Wrap line
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>sn ]
map <leader>sp [
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" => Yank Ring
""""""""""""""""""""""""""""""
map <leader>y :YRShow<cr>

""""""""""""""""""""""""""""""
" => File explorer
""""""""""""""""""""""""""""""
"Split vertically
let g:explVertical=1

"Window size
let g:explWinSize=35

let g:explSplitLeft=1
let g:explSplitBelow=1

"Hide some file
let g:explHideFiles='^.,.*.class$,.*.swp$,.*.pyc$,.*.swo$,.DS_Store$'

"Hide the help thing..
let g:explDetailedHelp=0


""""""""""""""""""""""""""""""
" => Minibuffer
""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplSplit = 1
"let g:miniBufExplSplitBelow=1

let g:miniBufExplMapWindowNavArrows = 1  
let g:miniBufExplMapCTabSwitchWindows = 1  
  
"解决FileExplorer窗口变小问题  
let g:miniBufExplForceSyntaxEnable = 1  
set noequalalways
"let g:miniBufExplorerMoreThanOne=2

"WindowZ
"I prefer WM
"map <c-w><c-t> :WMToggle<cr>
""""""""""""""""""""""""""""""
" winManager setting
" 来自 进阶教程
""""""""""""""""""""""""""""""
let g:NERDTree_title="[NERD Tree]" 
function! NERDTree_Start()
	exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
	return 1
endfunction
let g:Tagbar_title = "[Tagbar]"
function! Tagbar_Start()
    exe 'q'
    exe 'TagbarOpen'
endfunction

function! Tagbar_IsValid()
    return 1
endfunction

let g:winManagerWindowLayout = "NERDTree|Tagbar"
let g:winManagerWidth = 22
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap wm :WMToggle<cr>
nmap wm :ToggleNERDTreeAndTagbar<cr>

let g:bufExplorerSortBy = "name"


""""""""""""""""""""""""""""""
" => Tag list (ctags) - not used
""""""""""""""""""""""""""""""
"下载ctags， ctags-5.8  ./configure --prefix=/usr/local/ctags
if MySys() == "windows"                "设定windows系统中ctags程序的位置
	let Tlist_Ctags_Cmd = 'ctags'
elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
    let Tlist_Ctags_Cmd="/usr/bin/ctags" 
endif
let Tlist_Ctags_Cmd="/usr/bin/ctags" 
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Sort_Type = "name"
let Tlist_Show_Menu = 1
map <F3> :Tlist<cr>


""""""""""""""""""""""""""""""
" => LaTeX Suite thing
""""""""""""""""""""""""""""""
"set grepprg=grep -r -s -n
let g:Tex_DefaultTargetFormat="pdf"
let g:Tex_ViewRule_pdf='xpdf'

if has("autocmd")
"Binding
au BufRead *.tex map <silent><leader><space> :w!<cr> :silent! call Tex_RunLaTeX()<cr>

"Auto complete some things ;)
au BufRead *.tex ino <buffer> $i indent
au BufRead *.tex ino <buffer> $* cdot
au BufRead *.tex ino <buffer> $i item
au BufRead *.tex ino <buffer> $m [<cr>]<esc>O
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype generic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Todo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au BufNewFile,BufRead *.todo so ~/vim_local/syntax/amido.vim

""""""""""""""""""""""""""""""
" => VIM
""""""""""""""""""""""""""""""
if has("autocmd") && v:version>600
au BufRead,BufNew *.vim map <buffer> <leader><space> :w!<cr>:source %<cr>
endif

""""""""""""""""""""""""""""""
" => HTML related
""""""""""""""""""""""""""""""
" HTML entities - used by xml edit plugin
let xml_use_xhtml = 1
"let xml_no_auto_nesting = 1

"To HTML
let html_use_css = 0
let html_number_lines = 0
let use_xhtml = 1


""""""""""""""""""""""""""""""
" => Ruby & PHP section
""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
""Run the current buffer in python - ie. on leader+space
"au BufNewFile,BufRead *.py so ~/vim_local/syntax/python.vim
"au BufNewFile,BufRead *.py map <buffer> <leader><space> :w!<cr>:!python %<cr>
"au BufNewFile,BufRead *.py so ~/vim_local/plugin/python_fold.vim

""Set some bindings up for 'compile' of python
"au BufNewFile,BufRead *.py set makeprg=python -c "import py_compile,sys; sys.stderr=sys.stdout; py_compile.compile(r'%')"
"au BufNewFile,BufRead *.py set efm=%C %.%#,%A File "%f", line %l%.%#,%Z%[%^ ]%@=%m
"au BufNewFile,BufRead *.py nmap <buffer> <F8> :w!<cr>:make<cr>

""Python iMap
"au BufNewFile,BufRead *.py set cindent
"au BufNewFile,BufRead *.py ino <buffer> $r return
"au BufNewFile,BufRead *.py ino <buffer> $s self
"au BufNewFile,BufRead *.py ino <buffer> $c ##<cr>#<space><cr>#<esc>kla
"au BufNewFile,BufRead *.py ino <buffer> $i import
"au BufNewFile,BufRead *.py ino <buffer> $p print
"au BufNewFile,BufRead *.py ino <buffer> $d """<cr>"""<esc>O

""Run in the Python interpreter
"function! Python_Eval_VSplit() range
" let src = tempname()
" let dst = tempname()
" execute ": " . a:firstline . "," . a:lastline . "w " . src
" execute ":!python " . src . " > " . dst
" execute ":pedit! " . dst
"endfunction
"au BufNewFile,BufRead *.py vmap <F7> :call Python_Eval_VSplit()<cr>


""""""""""""""""""""""""""""""
" => Cheetah section
"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
" => Java section
"""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
"au BufNewFile,BufRead *.js so ~/vim_local/syntax/javascript.vim
"function! JavaScriptFold()
" set foldmethod=marker
" set foldmarker={,}
" set foldtext=getline(v:foldstart)
"endfunction
"au BufNewFile,BufRead *.js call JavaScriptFold()
"au BufNewFile,BufRead *.js imap <c-t> console.log();<esc>hi
"au BufNewFile,BufRead *.js imap <c-a> alert();<esc>hi
"au BufNewFile,BufRead *.js set nocindent
"au BufNewFile,BufRead *.js ino <buffer> $r return

"au BufNewFile,BufRead *.js ino <buffer> $d //<cr>//<cr>//<esc>ka<space>
"au BufNewFile,BufRead *.js ino <buffer> $c /**<cr><space><cr>**/<esc>ka


if has("eval") && has("autocmd")
"vim 5.8.9 on mingw donot know what is <SID>, so I avoid to use function
"c/cpp
fun! Abbrev_cpp()
ia <buffer> cci const_iterator
ia <buffer> ccl cla
ia <buffer> cco const
ia <buffer> cdb bug
ia <buffer> cde throw
ia <buffer> cdf /** file<CR><CR>/<Up>
ia <buffer> cdg ingroup
ia <buffer> cdn /** Namespace <namespace<CR><CR>/<Up>
ia <buffer> cdp param
ia <buffer> cdt test
ia <buffer> cdx /**<CR><CR>/<Up>
ia <buffer> cit iterator
ia <buffer> cns Namespace ianamespace
ia <buffer> cpr protected
ia <buffer> cpu public
ia <buffer> cpv private
ia <buffer> csl std::list
ia <buffer> csm std::map
ia <buffer> css std::string
ia <buffer> csv std::vector
ia <buffer> cty typedef
ia <buffer> cun using Namespace ianamespace
ia <buffer> cvi virtual
ia <buffer> #i #include
ia <buffer> #d #define
endfunction

"Miao Pre-defined functions for specific files
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
"<------Miao Pre-defined functions for specific files

fun! Abbrev_java()
ia <buffer> #i import
ia <buffer> #p System.out.println
ia <buffer> #m public static void main(String[] args)
endfunction

fun! Abbrev_python()
ia <buffer> #i import
ia <buffer> #p print
ia <buffer> #m if __name__=="__main":
"Remove trailing white spaces when saving a python file:
autocmd BufWrite *.py :call DeleteTrailingWS()
"noremap <leader>w :call DeleteTrailingWS()<CR>

"flake8
autocmd FileType python map <buffer> <leader><F3> :call Flake8()<CR>

set foldmethod=indent
set foldlevel=99
nnoremap <space> za
endfunction
augroup abbreviation
au!
au FileType cpp,c :call Abbrev_cpp()
au FileType java :call Abbrev_java()
au FileType python :call Abbrev_python()
augroup END
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remove the Windows ^M
"与showmarks中的快捷键有冲突
"noremap <Leader>m :%s/r//g<CR>

"Paste toggle - when pasting something in, don't indent.
"设置set paste选项，这样粘贴代码时就不会产生缩进了，不需要缩进时set nopaste
set pastetoggle=<F9>

"Remove indenting on empty line
"map <F2> :%s//s*$//g<cr>:noh<cr>''

"Super paste
inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

"NEW NEW NEW -------------------------
"" 打开文件时，按照 viminfo 保存的上次关闭时的光标位置重新设置光标
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"如果不设定g:LookupFile_TagExpr的值，那么lookupfile插件会以tags选项定义的文件作为它的tag文件
"不允许创建不存在的文件
"let g:LookupFile_AllowNewFiles = 0
let g:LookupFile_TagExpr = '"./filenametags"'

"p4
nnoremap @p4a :!p4 add %:p
nnoremap @p4e :!p4 edit %:p
nnoremap @p4d :!p4 diff %:

"CrlP的配置
"https://github.com/kien/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f'
"<-CrlP的配置

""FuzzyFinder 配置"{{{http://blog.chinaunix.net/uid-20147410-id-1646168.html
""let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]
"let g:fuf_modesDisable = []
"let g:fuf_mrufile_maxItem = 400
"let g:fuf_mrucmd_maxItem = 400
"nnoremap <silent> sj     :FufBuffer<CR>
"nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
"nnoremap <silent> sK     :FufFileWithFullCwd<CR>
"nnoremap <silent> s<C-k> :FufFile<CR>
"nnoremap <silent> sl     :FufCoverageFileChange<CR>
"nnoremap <silent> sL     :FufCoverageFileChange<CR>
"nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
"nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
"nnoremap <silent> sD     :FufDirWithFullCwd<CR>
"nnoremap <silent> s<C-d> :FufDir<CR>
"nnoremap <silent> sn     :FufMruFile<CR>
"nnoremap <silent> sN     :FufMruFileInCwd<CR>
"nnoremap <silent> sm     :FufMruCmd<CR>
"nnoremap <silent> su     :FufBookmarkFile<CR>
"nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
"vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
"nnoremap <silent> si     :FufBookmarkDir<CR>
"nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
"nnoremap <silent> st     :FufTag<CR>
"nnoremap <silent> sT     :FufTag!<CR>
"nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
"nnoremap <silent> s,     :FufBufferTag<CR>
"nnoremap <silent> s<     :FufBufferTag!<CR>
"vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
"vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
"nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
"nnoremap <silent> s.     :FufBufferTagAll<CR>
"nnoremap <silent> s>     :FufBufferTagAll!<CR>
"vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
"vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
"nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
"nnoremap <silent> sg     :FufTaggedFile<CR>
"nnoremap <silent> sG     :FufTaggedFile!<CR>
"nnoremap <silent> so     :FufJumpList<CR>
"nnoremap <silent> sp     :FufChangeList<CR>
"nnoremap <silent> sq     :FufQuickfix<CR>
"nnoremap <silent> sy     :FufLine<CR>
"nnoremap <silent> sh     :FufHelp<CR>
"nnoremap <silent> se     :FufEditDataFile<CR>
"nnoremap <silent> sr     :FufRenewCache<CR>
""
"" F4和shift+F4调用FuzzyFinder命令行菜单""{{{
""
"function! GetAllCommands()
  "redir => commands
  "silent command
  "redir END
  "return map((split(commands, "\n")[3:]),
      "\      '":" . matchstr(v:val, ''^....\zs\S*'')')
"endfunction

"" 自定义命令行
"let g:fuf_com_list=[':exe "FufBuffer                       " |" sj     ',
                   "\':exe "FufFileWithCurrentBufferDir     " |" sk     ',
                   "\':exe "FufFileWithFullCwd              " |" sK     ',
                   "\':exe "FufFile                         " |" s<C-k> ',
                   "\':exe "FufCoverageFileChange           " |" sl     ',
                   "\':exe "FufCoverageFileChange           " |" sL     ',
                   "\':exe "FufCoverageFileRegister         " |" s<C-l> ',
                   "\':exe "FufDirWithCurrentBufferDir      " |" sd     ',
                   "\':exe "FufDirWithFullCwd               " |" sD     ',
                   "\':exe "FufDir                          " |" s<C-d> ',
                   "\':exe "FufMruFile                      " |" sn     ',
                   "\':exe "FufMruFileInCwd                 " |" sN     ',
                   "\':exe "FufMruCmd                       " |" sm     ',
                   "\':exe "FufBookmarkFile                 " |" su     ',
                   "\':exe "FufBookmarkFileAdd              " |" s<C-u> ',
                   "\':exe "FufBookmarkFileAddAsSelectedText" |" s<C-u> ',
                   "\':exe "FufBookmarkDir                  " |" si     ',
                   "\':exe "FufBookmarkDirAdd               " |" s<C-i> ',
                   "\':exe "FufTag                          " |" st     ',
                   "\':exe "FufTag!                         " |" sT     ',
                   "\':exe "FufTagWithCursorWord!           " |" s<C-]> ',
                   "\':exe "FufBufferTag                    " |" s,     ',
                   "\':exe "FufBufferTag!                   " |" s<     ',
                   "\':exe "FufBufferTagWithSelectedText!   " |" s,     ',
                   "\':exe "FufBufferTagWithSelectedText    " |" s<     ',
                   "\':exe "FufBufferTagWithCursorWord!     " |" s}     ',
                   "\':exe "FufBufferTagAll                 " |" s.     ',
                   "\':exe "FufBufferTagAll!                " |" s>     ',
                   "\':exe "FufBufferTagAllWithSelectedText!" |" s.     ',
                   "\':exe "FufBufferTagAllWithSelectedText " |" s>     ',
                   "\':exe "FufBufferTagAllWithCursorWord!  " |" s]     ',
                   "\':exe "FufTaggedFile                   " |" sg     ',
                   "\':exe "FufTaggedFile!                  " |" sG     ',
                   "\':exe "FufJumpList                     " |" so     ',
                   "\':exe "FufChangeList                   " |" sp     ',
                   "\':exe "FufQuickfix                     " |" sq     ',
                   "\':exe "FufLine                         " |" sy     ',
                   "\':exe "FufHelp                         " |" sh     ',
                   "\':exe "FufEditDataFile                 " |" se     ',
                   "\':exe "FufRenewCache                   " |" sr     ',
                   "\':exe "FufDir ~/"                        |" 更换目录从家目录jml', 
                   "\':exe "FufFile ~/"                       |" 打开文件从家目录jml', 
                   "\]


"nnoremap <silent> <S-F4> :call fuf#givencmd#launch('', 0, '选择命令>', GetAllCommands())<CR>
"nnoremap <silent> <F4> :call fuf#givencmd#launch('', 0, '选择命令>', g:fuf_com_list)<CR>
""<---fuzzyfinder
"-->lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
	let _tags = &tags
	try
		let &tags = eval(g:LookupFile_TagExpr)
		let newpattern = '\c' . a:pattern
		let tags = taglist(newpattern)
	catch
		echohl ErrorMsg | echo
		"Exception: " . v:exception |
		echohl NONE
		return ""
	finally
		let &tags = _tags
	endtry

"Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
        return files
endfunction
let g:LookupFile_LookupFunc ='LookupFile_IgnoreCaseFunc'
"<--lookup file with ignore case
"
"cscope相关的设置-->
"从~/vim-config/plugin/cscope_maps.vim拷贝出来
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  
    
	nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	
endif
"<--cscope相关的设置

"map <C-\><F12> :!rm tags cscope.in.out cscope.out cscope.po.out; ctags -L cscope.files --c++-kinds=+p --fields=+iaS --extra=+q .; cscope -Cbkq -i cscope.files;cscope reset<CR>
"map <C-\><F11> :!cscope -Cbkq -i cscope.files;cscope reset<CR>
map <C-\><F12> :!bash ~/myBin/vimUpdate<CR>

"Self--viminfo to save status use absolute path
if filereadable("Session.vim")
	if argc() == 0
		set sessionoptions+=curdir
		set sessionoptions-=sesdir
		au VimEnter * source ./Session.vim
		au VimEnter * rviminfo ./viminfo
		au VimLeave * mksession! ./Session.vim 
		au VimLeave * wviminfo! ./viminfo
	endif
endif

" font
"set guifont=Courier_new:h11:b:cDEFAULT

""""""""""""""""""""""""""""""
" mark setting
"""""""""""""""""""""""""""""""
nmap <silent> <leader>hl <Plug>MarkSet
vmap <silent> <leader>hl <Plug>MarkSet
nmap <silent> <leader>hh <Plug>MarkClear
vmap <silent> <leader>hh <Plug>MarkClear
nmap <silent> <leader>hr <Plug>MarkRegex
"resize
"Adopt default shortcuts
"ctrl+w + --当前窗口增高一行。也可以用n增高n行。
"ctrl+w - --当前窗口减小一行。也可以用n减小n行。
"ctrl+w _ --当前窗口扩展到尽可能的大。也可以用n设定行数。
":resize n -- 当前窗口n行高。
"ctrl+w = -- 所有窗口同样高度。
"n ctrl+w _ -- 当前窗口的高度设定为n行。
"ctrl+w < --当前窗口减少一列。也可以用n减少n列。
"ctrl+w > --当前窗口增宽一列。也可以用n增宽n列。
"ctrl+w | --当前窗口尽可能的宽。也可以用n设定列数。
"下面的会有问题
"map <C-right> :vertical res +8<cr>
"map <C-left> :vertical res -8<cr>
"map <C-up> :res +8<cr>
"map <C-down> :res -8<cr>

"resize for putty
map <leader><leader>l :vertical res +8<cr>
map <leader><leader>h :vertical res -8<cr>
map <leader><leader>k :res +8<cr>
map <leader><leader>j :res -8<cr> 
"Make the qucickfix window in the bottom
"botright cwindow
au FileType qf wincmd J
"look up the word on the cursor in the current file
nmap <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>
"Append behavior by default, key mapping for clearing the quickfix window
set cscopequickfix=s+,c+,d+,i+,t+,e+
"map <F6> :call setqflist([])<cr> 
imap <F6> <C-x><C-o>
map <unique><s-F12> :cp<cr>
map <unique><F12> :cn<cr>
"---->complete related
"http://www.cnblogs.com/chezxiaoqiang/archive/2012/02/29/2674392.html                        
"" Neocomplcache settings do not use example files
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_min_syntax_length = 3
""let g:neocomplcache_enable_underbar_completion = 1
""" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()     
"clang complete
"let g:clang_complete_copen=1
"let g:clang_complete_auto = 1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
"let g:clang_close_preview=1
"let g:clang_use_library=1
"let g:clang_user_options='-ferror-limit=0 || exit 0'
""let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'
""let g:clang_user_options='-std=c++11'
""location of libclang.[dll/so/dylib]
"let g:clang_library_path='/usr/lib/llvm-3.3/lib/'
""为了让补全显示不多建立一个窗口
"set completeopt=longest,menu
"<----complete related
"let g:loaded_winfileexplorer =1


""""""""""""""""""""""""""""""
" showmarks
" setting-->http://easwy.com/blog/archives/advanced-vim-skills-advanced-move-method/
""""""""""""""""""""""""""""""
"下面的快捷键在插件本身已经设置过了
"<Leader>mt   - 打开/关闭ShowMarks插件
"<Leader>mo   - 强制打开ShowMarks插件
"<Leader>mh   - 清除当前行的标记
"<Leader>ma   - 清除当前缓冲区中所有的标记
"<Leader>mm   - 在当前行打一个标记，使用下一个可用的标记名
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 
""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>mk :MarksBrowser<cr>

"Readonly-->from Amos
"function! Get_file_perm()
"  let permission = getfperm(expand('%:p'))
"  if(permission[0] == 'r' && permission[1] == '-')
"    setlocal nomodifiable
"  else
"    setlocal modifiable
"  endif
"endfunction
"autocmd BufRead * : call Get_file_perm()
"<--Readonly

"CCTree
set updatetime=0
let g:CTreeRecursiveDepth = 2
let g:CCTreeKeyTraceForwardTree = '<leader>.'
let g:CCTreeKeyTraceReverseTree = '<leader>,'
let g:CCTreeKeyToggleWindow = '<leader>w'

"nnoremap <leader><leader>. :CCTreeTraceForward <C-R><C-w><CR>
"nnoremap <leader><leader>, :CCTreeTraceReverse <C-R><C-w><CR>
nmap <leader><leader>2 :CCTreeLoadDB cscope.out<CR>
nmap <leader><leader>3 :CCTreeSaveXRefDB cctree.out<CR>
nmap <leader><leader>4 :CCTreeLoadXRefDB cctree.out<CR>
function! LoadCCTree()
   if filereadable('cctree.out')
       CCTreeLoadXRefDB cctree.out
"   else
"       CCTreeLoadDB cscope.out 
"       CCTreeSaveXRefDB cctree.out
   endif
endfunc
"autocmd VimEnter * call LoadCCTree()


set tags=tags;
"自动改变目录一般不要开，否则会引起lookup
"file插件工作不正常，因为它是基于工程的根目录的
"set autochdir
"

" YCM自动补全配置--->
" http://www.cnblogs.com/zhongcq/p/3630047.html
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug' 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件
" F5已经被Lookup file 占用，此处改为F7
nnoremap <F7> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nmap <F4> :YcmDiags<CR>
" YCM自动补全配置--->


" YCM搭档1: syntastic相关-->
"http://www.cnblogs.com/zhongcq/p/3642794.html#toc_1.22
" 多语言的实时语法检查插件,使用pyflakes,速度比pylint快
let g:syntastic_error_symbol = '✗'	"set error or warning signs
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
"let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
"let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_python_checkers=['flake8', 'python3']
highlight SyntasticErrorSign guifg=white guibg=black

let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons = 1	"whether to show balloons
" <--syntastic相关

"YCM搭档2: 快速插入代码片段插件ultisnips-->
""定义存放代码片段的文件夹 .vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
""let g:UltiSnipsSnippetDirectories=["bundle/vim-snippets/UltiSnips/"]
"let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
"插入模式下直接通过ii键来触发UltiSnips的代码块补全
let g:UltiSnipsExpandTrigger="ii"
"
""iI弹出UltiSnips的可用列表,不常用的, 所以这里设置成了特殊的iI映射
let g:UltiSnipsListSnippets="iI"

"II跳转的到下一个代码块可编辑区
let g:UltiSnipsJumpForwardTrigger="II"
""OO跳转到上一个代码块可编辑区

let g:UltiSnipsJumpBackwardTrigger="OO"
"<--ultisnips

"doxygen toolkit 
let g:DoxygenToolkit_briefTag_pre="@synopsis  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Ren Miaojian"
let g:DoxygenToolkit_licenseTag=""


let g:DoxygenToolkit_authorName="Ren Miaojian"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

"multicousor
" Default mapping crl-p已经被crlp占用了
let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"Path for gf
set path=.,/usr/local/include/c++/4.8.3/,/usr/include


"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"ignore some filetypes in NERDTree
let NERDTreeIgnore=['\.o$', '\.pyc$', '\~$']

"dbgpavim debug  from: https://brookhong.github.io/2014/09/27/dbgpavim-cn.html
""Part1-->normal模式下
"F5  启动调试监听，或者有可调试连接时进入调试模式。  ---->改为shift+F6
"F6  停止调试监听。
"F8  切换dbgPavimBreakAtEntry的值，按这个键你可以看到状态栏提示信息在bae和bap之间切换，即是否在PHP程序入口处停下。
"bae Break At Entry，在入口处停下
"bap Break only At breakPoints，只在断点处停下
"F9 在当前行设置或删除断点，在调试模式下同样适用。

""Part2-->debug模式下
"F1  打开或关闭帮助窗口
"F2  单步进入
"F3  单步跳过
"F4  单步退出
"F5  继续执行直到下一个断点，如果后续没有断点就退出调试模式。
"F6  停止调试，这个按键就导致VIM退出调试模式，并且停止调试监听。
"F7  调试时执行php语句，按下F7后，用户可在变量查看窗口输入php语句，回车后执行。
"F9  最大化某个子窗口，或者重置窗口布局。
"F11 查看当前执行环境下的所有变量的值，在不同的堆栈层次，会有不同的结果。
"F12 查看光标下的变量的值。

""Part3-->Vim 命令
":Bl 列出所有断点
":Bp 与F9功能相同
":Dp 这个命令可用于快速调试当前文件，它实现了如下功能：

    "1. 检查命令行下XDebug/pydbgp的设置是否正确
    "2. 启动调试器监听
    "3. 用php/pydbgp执行当前文件

":Pg <longfoo>   查看较长变量的值，比如:Pg $this->savings[3]
":Up 调用堆栈往上一级
":Dn 调用堆栈往下一级
":Wc [$foo]  打开/关闭对变量$foo的监视。如果没有参数，就监视当前执行环境下的所有变量。
":We <foo>   打开/关闭对语句foo的监视，即每一单步后自动执行foo语句。
":Wl 列出所有被监视的变量或语句。
":Children <n>   对于数组默认显示前1024个元素，这个命令可以修改。
":Depth <n>  对于复杂变量，默认只显示下一层成员，这个命令可以设置限制多层。
":Length <n> 对于字符串变量，默认执行显示前1024个字符，这个命令可以设置显示长度。
"开启调试
"let g:dbgPavimKeyRun = '<leader><F6>'
"let g:dbgPavimKeyStepOver = '<leader><F10>'
"let g:dbgPavimKeyStepInto = '<leader><F8>'
"let g:dbgPavimKeyStepOut = '<leader><F12>'
"let g:dbgPavimKeyPropertyGet = '<leader><F3>'
"let g:dbgPavimKeyContextGet = '<leader><F4>'
""设置断点
"let g:dbgPavimKeyToggleBp = '<F9>'
""切换bae还是bap
"let g:dbgPavimKeyToggleBae = '<leader><F9>'
""let g:dbgPavimKeyToggleBae = '<F5>'
"let g:dbgPavimKeyRelayout = '<leader><F2>'
"let g:dbgPavimPort = 9009
"let g:dbgPavimBreakAtEntry = 0
"<-----------------------dbgpavim

"-----------------------vdebug--->
let g:vdebug_keymap = {
\    "run" : "<leader><F6>",
\    "run_to_cursor" : "<leader><F9>",
\    "step_over" : "<leader><F10>",
\    "step_into" : "<leader><F8>",
\    "step_out" : "<leader><F12>",
\    "close" : "<F6>",
\    "detach" : "<leader><F7>",
\    "set_breakpoint" : "<F9>",
\    "get_context" : "<leader><F3>",
\    "eval_under_cursor" : "<leader><F4>",
\    "eval_visual" : "<leader><Leader>e",
\}

let g:vdebug_options= {
    \    "port" : 9000,
    \    "server" : '',
    \    "timeout" : 20,
    \    "on_close" : 'detach',
    \    "break_on_open" : 1,
    \    "ide_key" : '',
    \    "path_maps" : {},
    \    "debug_window_level" : 0,
    \    "debug_file_level" : 2,
    \    "debug_file" : "~/vdebug.txt",
    \    "watch_window_style" : 'expanded',
    \    "marker_default" : '⬦',
    \    "marker_closed_tree" : '▸',
    \    "marker_open_tree" : '▾'
    \}
"<---------------------<--vdebug---

let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }

" fold method for HTML
au BufNewFile,BufRead *.xml,*.htm,*.html so ~/.vim/bundle/XML-Folding/plugin/XMLFolding.vim


"let g:pyclewn_terminal = "xterm, -e"
set colorcolumn=80

" jedi
"https://github.com/Valloric/YouCompleteMe/issues/234
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"
let g:jedi#show_call_signatures_delay = 0

au FileType qf call AdjustWindowHeight(3, 10)
function! AdjustWindowHeight(minheight, maxheight)
    let l = 1
    let n_lines = 0
    let w_width = winwidth(0)
    while l <= line('$')
        " number to float for division
        let l_len = strlen(getline(l)) + 0.0
        let line_width = l_len/w_width
        let n_lines += float2nr(ceil(line_width))
        let l += 1
    endw
    exe max([min([n_lines, a:maxheight]), a:minheight]) . "wincmd _"
endfunction
let g:go_bin_path="/Users/mac/code/go/bin/"

" YouCompleteMe 配置
let g:ycm_server_python_interpreter='/usr/local/bin/python3.7'
" Note that you can install YCM with both libclang and clangd enabled. In that case clangd will be preferred unless you have the following in your vimrc:
"let g:ycm_use_clangd = 0
" 寻找全局配置文件
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'gopls',
  \     'cmdline': [ '~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls' , "-rpc.trace" ],
  \     'filetypes': [ 'go' ],
  \     "project_root_files": [ "go.mod" ]
  \   }
  \ ]

let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
"let g:go_def_mode='~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls'
"let g:go_info_mode='~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/src/golang.org/x/tools/cmd/gopls/gopls'
" 开启YouCompleteMe 日志模式
" let g:ycm_log_level = 'debug'
set completeopt=longest,menu
"<---Self
