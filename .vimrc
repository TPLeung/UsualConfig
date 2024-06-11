" language
set encoding=utf-8
let &termencoding=&encoding
"langua message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,big5,euc-jp,euc-kr
set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
set background=dark
colorscheme codedark

" configure by Tom
set number
set ruler
set nowrap
set cursorline
set cursorcolumn
highlight CursorLine    cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=gray guifg=NONE
highlight CursorColumn  cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=gray guifg=NONE
map ln  :nohl<cr>
map sss :%s/\s\+$//g<cr> :nohl<cr>
map ec  :e ~/.vimrc<cr>
map sc  :source ~/.vimrc<cr>
map <C -`>:bo term<cr>
" hide toolbar and scrollbar
set guioptions-=m "menu  bar
set guioptions-=T "tool  bar
set guioptions-=r "scrollbar on the right
set guioptions-=L "scrollbar on the left
set guioptions-=b "scrollbar on the bottom
" search
set smartcase
set incsearch
" verilog related
map gm :e <C-R><C-W>.v<cr>
"mouse enable inside tmux
set ttymouse=xterm2
"set mouse=a
" solve background mismatch through tmux
if !has('gui_running')
    set term=screen-256color
endif
" gvim font
if has("gui_running")
    set guifont=Consolas\ 11
endif
" speedup the setup clipboard when using xterm
set clipboard=exclude:.*

syntax enable
syntax on
set noeb
filetype on
filetype plugin on
filetype indent on
"set autochdir
set scrolloff=5
set hlsearch
set vb t_vb=
autocmd GUIEnter * set vb t_vb=
hi comment ctermfg=6

" vimdiff
if &diff
        hi DiffAdd      ctermbg=LightRed        ctermfg=black
        hi DiffChange   ctermbg=LightGreen      ctermfg=black
        hi DiffText     ctermbg=LightMagenta    ctermfg=white
        hi DiffDelete   ctermbg=cyan            ctermfg=black
endif

" tab shortcut
map tn :tabnew<cr>
map tc :tabclose<cr>
map th :tabrewind<cr>
map tj :tabprevious<cr>
map tk :tabnext<cr>
map tl :tablast<cr>

" mouse
map mm :set mouse=a<cr>
map mn :set mouse-=a<cr>

" fold
map fe :set foldenable<cr>
map fn :set nofoldenable<cr>
map fs :set foldmethod=syntax<cr>:set foldenable<cr>
map fm :set foldmethod=marker<cr>:set foldenable<cr>

" resize
map <S-left> :vertical resize -1<cr>
map <S-right> :vertical resize +1<cr>
map <S-up> :resize -1<cr>
map <S-down> :resize +1<cr>

" quickfix
"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>

" TagList
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
map tt :TlistToggle<cr>

" Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
map cs :!cscope -Rbq -f .cscope<cr>:cs add .cscope<cr>

" OmniCppComplete
set nocp
set completeopt=menu,longest,preview

" SuperTab
let g:SuperTabMappingForward = "<tab>"
let g:SuperTabMappingBackward= "s-tab"
let g:SuperTabDefaultCompletionType="context"

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

" Winmanager
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree"
"let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

map mw :WMToggle<cr>

" NERDTree
map <expr> tr bufloaded("NERD_tree_".strpart(bufname(winbufnr(winnr())),10))?"q":":NERDTree\<cr>"

" Anzu
" nmap n <Plug>(anzu-mode-n>
" nmap N <Plug>(anzu-mode-N>
" nmap * <Plug>(anzu-star-with-echo>
" nmap # <Plug>(anzu-sharp-with-echo>
" nmap <Esc><Esc> <Plug>(anzu-clear-search-status()}
" set statusline=%{anzu#search_status()}

" Airline
if !exists('g:airline_symbols')
    let g:airline_symbols ={}
endif
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let laststatus = 2

set showtabline=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#current_first = 0

" let g:airline#extensions#anzu#enabled = 1

" let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#whitespace#symbol  = '!'

nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <C-D> :b#<bar>bd#<CR>
nnoremap <C-PageDown> :bn<CR>
nnoremap <C-PageUp>   :bp<CR>

" special setting for c,c++
autocmd FileType c,cpp set smartindent

" special setting for v, sv and python
autocmd FileType verilog_systemverilog set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent tw=130
autocmd FileType python                set tabstop=8 softtabstop=4 shiftwidth=4 expandtab smartindent

let g:verilog_indent_width = 2