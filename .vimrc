"****Display settings****
set wrap
set nonu
set linebreak
set background=dark
set ruler
set laststatus=1
:nmap <F8> :if &background == "dark" <Bar>
		\   set background=light <Bar>
		\ else <Bar>
		\   set background=dark <Bar>
		\ endif <CR><Bar>
:nmap <C-N> :if empty(&number) <Bar>
		\   set nu <Bar>
		\ else <Bar>
		\   set nonu <Bar>
		\ endif <CR><ESC>
:nmap <F11> :if empty(&wrap) <Bar>
		\   set wrap <Bar>
		\ else <Bar>
		\   set nowrap <Bar>
		\ endif <CR><ESC>
"let loaded_matchparen=0

"moving around
":nmap <C-D> 100l
":nmap <C-U> 100h
":imap <C-H> <C-O>:let pos=wincol()<Bar>execute "normal h"<Bar>
"			\ if pos==wincol() <Bar>
"			\ <left>
":imap <C-H> <Left>     "C-H represent BS in windows. Do not map it.
":imap <C-L> <Right>
":imap <C-J> <Down>
":imap <C-K> <Up>

"****Edit settings****
set wildmode=longest,longest,full
set wildmenu
"cnoremap <C-H> <C-P>     "C-H represent BS in windows. Do not map it.
"cnoremap <C-L> <C-N>
set backspace=2
set expandtab
au filetype make set noexpandtab
set shiftwidth=4
set tabstop=4
set nospell
set spellcapcheck=
"set expandtab
"set softtabstop=4
:imap <F1> <C-V><TAB>
:imap <TAB> <C-P>
:imap <C-D> <Del>
set spelllang=en_us
set spellfile=$HOME/.vim/MyDictionary.utf-8.add
:nmap <C-P> :if empty(&spell) <Bar>
		\       set spell<Bar>
		\       set spellcapcheck&vim<Bar>
		\ else<Bar>
		\     if empty(&spellcapcheck)<Bar>
		\       set nospell<Bar>
		\     else<Bar>
		\       set spellcapcheck=<Bar>
		\     endif<Bar>
		\ endif<CR><ESC>
":nmap <C-M> :if empty(&readonly) <Bar>
"		\       set readonly<Bar>
"		\       set nomodifiable<Bar>
"		\ else<Bar>
"		\     if empty(&modifiable)<Bar>
"		\       set modifiable<Bar>
"		\     else<Bar>
"		\       set noreadonly<Bar> 
"		\     endif<Bar>
"		\ endif<CR><ESC>
let hexmode=0
:nmap <C-X> :if hexmode==0 <Bar>
		\     execute '%!xxd'<Bar>
		\     let hexmode=1<Bar>
		\ else<Bar>
		\     execute '%!xxd -r'<Bar>
		\     let hexmode=0<Bar>
		\ endif<CR><ESC>

"****Syntax settings****
set foldmethod=manual
"set foldmethod=syntax
set foldlevel=20
syntax enable
syntax on
set smartindent
:nmap <F10> :if exists("syntax_on") <Bar>
        \   syntax off <Bar>
        \ else <Bar>
        \   syntax on <Bar>
        \ endif <CR><ESC>

"****Search settings****
set hlsearch
set incsearch
set ignorecase
:nmap <F9> :if empty(&ignorecase) <Bar>
        \   set ignorecase <Bar>
        \ else <Bar>
        \   set noignorecase<Bar>
        \ endif <CR><ESC>

"****Tabpage setting****
:nmap <C-C><C-N> :tabnew<CR>
:nmap <C-C><C-C> :tabclose<CR>
:nmap <C-C><C-L> :tabnext<CR>
:nmap <C-C><C-H> :tabprevious<CR>

"****Resize windows****
:nmap _ :execute "normal 1<Bslash><lt>C-W>-"<CR>
:nmap + :execute "normal 1<Bslash><lt>C-W>+"<CR>
:nmap <C-J> :execute "normal 1<Bslash><lt>C-W><lt>"<CR>
:nmap <C-K> :execute "normal 1<Bslash><lt>C-W>>"<CR>

"****Abbreviate****
abbreviate #a /************************************************
abbreviate #b ************************************************/

cabbrev ctags "!ctags -languages=ASM"

"****set path****
"set tags=./tags,./sources/tags,./thirdparties/tags 

"****Tell edit status****
:nmap <F12> :echo "********************************"<Bar>
		\	echo "Showing current VIM status now!"<Bar>
		\   echo "********************************"<Bar>
		\   echo "****  Display settings:"<Bar>
		\   echo "warp =" empty(&wrap) ? "off    " : "on    "
		\		 "number =" empty(&number) ? "off    " : "on    "
		\        "linebreak =" empty(&linebreak) ? "off    " : "on    "
		\        "background =" &background=="dark" ? "dark" : "light"<Bar>
		\   echo " "<Bar>
		\   echo "****  Edit settings:"<Bar>
		\   echo "backspace =" &backspace
		\        "    shiftwidth =" &shiftwidth
		\        "    tabstop =" &tabstop
		\        "    expandtab =" empty(&expandtab) ? "off" : "on"<Bar>
		\   echo "spelllang =" &spelllang
		\        "    spellfile =" &spellfile<Bar>
		\   echo "spell =" empty(&spell) ? "off" : "on"
		\        "    spellcapcheck =" empty(&spellcapcheck) ? "off" : "on"<Bar>
		\   echo "readonly =" empty(&readonly) ? "off" : "on"
		\        "    modifiable =" empty(&modifiable) ? "off" : "on"
		\        "    hexmode =" hexmode == 0 ? "off" : "on"<Bar>
		\   echo " "<Bar>
		\   echo "****  Syntax related settying:"<Bar>
		\   echo "syntax =" exists("syntax_on") ? "on" : "off"
		\        "    smartindent =" empty(&smartindent) ? "off" : "on"
		\        "    foldmethod =" &foldmethod
		\		 "    foldlevel =" &foldlevel<Bar>
		\   echo " "<Bar>
		\   echo "****  Search settings:"<Bar>
		\   echo "hlsearch =" empty(&hlsearch) ? "off" : "on"
		\  		 "    incsearch =" empty(&incsearch) ? "off" : "on"
		\        "    ignorecase =" empty(&ignorecase) ? "off" : "on"<CR>

"****Tips****
"<C-S> to lock the input
"<C-Q> to unlock the input
":%!xxd to hex mode
":%!xxd -r to return
"execute \"normal 30\<C-W>|" to set the size of a vertical window
"execute \"normal 30\<C-W>_" to set the size of a horizontal window
"z= to spell suggestion
"zg,zG,zug,zuG,  zw,zW,zuw,zuW  to set the spell dictionary
"<C-G> to show the information about current file
"<C-U> to delete all content before the cursor (In edit mode)
":help fold for more information about fold
"<C-W> gf, <C-W> gF Open a new tab page and edit the file name under the cursor.
"<C-D> to move down  ||  <C-U> to move up (In normal mode)
"% to find the corresponding bracket, comment, etc.
"gD, gd to search for the declaration of name
"<C-V> to visual-block mode  shift+v to visual line mode
"U, u to change the character case in visual mode
"fo<C-v>3jISTRING<ESC>, fo<C-v>3j$ASTRING<ESC>, fo<C-v>5l3jrX to insert, append or replace in a visual-block mode
"set filetype=xxx to set the syntax of current file
"ptag [tagname] to see tag in a preview window | CTRL-W+z to close a preview window |CTRL-W } to see tags in a preview window
"stag [tagname] to split a new window for tag 
"g], g} equals to a ts command | CTRL-W g } to do ts in a preview window
"pedit to open a file in preview window
"<C-O> to move to the older position in the jump list, while <C-I> to move to the newer position in the jump list

"autocmd BufNewFile,BufRead *.tex :set fenc=gbk   //set *.tex to gbk encoding

"Use <C-O> can porting some Emacs shortcut to vim
":imap <C-A> <C-O>:w<CR><ESC>a
":imap <C-S> <ESC>:w<CR>a

"****problem****
"search buffer
"color of wildmenu, status, completing list
"close tag when using xml
"completing symbol e.g.  <div>    </div>   /*   */

"****prepare to add****
"short key for tn and cn
"tags in preview windows or tabs
"set path
"set tag path

"****test*****
"set nocp
"filetype plugin on
