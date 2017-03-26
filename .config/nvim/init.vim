"VUNDLE (required)
"==================================================================================================== 
set shell=bash
set nocompatible              " be iMproved, required
set splitbelow
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"PLUGIN LIST
"==================================================================================================== 
Plugin 'AndrewRadev/switch.vim'       " switch true/false etc.
Plugin 'beyondmarc/opengl.vim'        " opengl keywords hilight
Plugin 'djjcast/mirodark'             " scheme
Plugin 'easymotion/vim-easymotion'    " fast motion
Plugin 'godlygeek/tabular'            " for markdown
Plugin 'Mathiasb17/vim-snippets'	  " snippet database
Plugin 'Mathiasb17/a.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mattn/emmet-vim'              " html zencoding renamed emmet
Plugin 'neomake/neomake'              " syntax hilight
Plugin 'Raimondi/delimitMate'         " close parenthesis etc.
Plugin 'scrooloose/nerdtree'		  " browse project
Plugin 'scrooloose/nerdcommenter'     " comment hotkeys
Plugin 'SirVer/ultisnips'             " snippet engine
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'tikhomirov/vim-glsl'
Plugin 'tpope/vim-rsi'                " gnu readline for insert mode
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-obsession'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'vim-airline/vim-airline'       
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'fneu/breezy'

"VUNDLE (Required)
"==================================================================================================== 
call vundle#end() 
filetype plugin indent on    " required

"BASIC EDITOR SETUP
"==================================================================================================== 
set mouse=a
let mapleader = "\<Space>"
set number             " Line numbers
set shiftwidth=4       " Width to shift over
set tabstop=4          " 4 spaces per tabulation
syn on                 " Syntax Hilight on
set backspace=2        " make backspace work like most other apps
tabdo set nowrap       " to avoid long lines splitting
set guioptions-=m      " remove menu bar
set guioptions-=T      " remove toolbar
set guioptions+=b      " horizontal scrollbar
set noswapfile         " no tmp files
set nf=octal,hex,alpha " increment/decrement with C-a and C-x

filetype indent on
set cindent
set cinoptions=>1s,e0,n0,f0,{0,}0,^0,L-1,:s,=s,l0,b0,gs,hs,N0,ps,ts,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,k0,m0,j0,J0,)20,*70,#0

"FONT SETTINGS
"==================================================================================================== 
"set guifont=Monospace\ 10 "font

"COLOR SCHEME
"==================================================================================================== 
colorscheme   torte
set           guicursor+=a:blinkon0
highlight     Cursor                  guifg=black   guibg=white
highlight     MatchParen              guifg=red     guibg=black
highlight     iCursor                 guifg=black   guibg=white

"FILE TYPES
"==================================================================================================== 
au   BufNewFile,BufRead   *.cu     set   ft=cuda.cpp
au   BufNewFile,BufRead   *.cuh    set   ft=cuda.cpp
au   BufNewFile,BufRead   *.glsl   set   ft=cpp.cuda
au   BufNewFile,BufRead   *.ctp    set   ft=php

"KEYBOARD MAPPINGS
"==================================================================================================== 
function LatexAccents()
  let b:winview = winsaveview()
  silent s/ä/\\"a/ge
  silent s/à/\\`a/ge
  silent s/â/\\^a/ge

  silent s/ë/\\"e/ge
  silent s/é/\\'e/ge
  silent s/è/\\`e/ge
  silent s/ê/\\^e/ge

  silent s/ï/\\"i/ge
  silent s/î/\\^i/ge

  silent s/ö/\\"o/ge
  silent s/ô/\\^o/ge
  
  silent s/ü/\\"u/ge
  silent s/ù/\\`u/ge
  silent s/û/\\^u/ge

  if(exists('b:winview'))
    call winrestview(b:winview)
  endif
endfunction

vnoremap   <leader>la    :call LatexAccents()

nnoremap   <leader>term :terminal<CR>
nnoremap   <leader>w    :w<CR>
nnoremap   <leader>q    :q<CR>
nnoremap   <leader>x    :x<CR>
nnoremap   <leader>a    :A<CR>

nnoremap   K            i<Enter><Esc>
nnoremap   gt           :bn<CR>
nnoremap   gT           :bp<CR>

nnoremap   <leader>nt   :NERDTreeToggle<CR>
nnoremap   -            :Switch<CR>
nnoremap   <leader>h    :set hlsearch!<CR> :set hlsearch?<CR>
nnoremap   <leader>sv   :source $MYVIMRC<CR>
nnoremap   <leader>ev   :e $MYVIMRC<CR>

vnoremap   <leader>t= :Tabularize /

"disable ex mode and arrow keys in normal mode
nnoremap   <up>         <Nop>
nnoremap   <down>       <Nop>
nnoremap   <left>       <Nop>
nnoremap   <right>      <Nop>
nnoremap   Q            <Nop>
xnoremap   <up>         <Nop>
xnoremap   <down>       <Nop>
xnoremap   <left>       <Nop>
xnoremap   <right>      <Nop>
xnoremap   Q            <Nop>

"System clipboard shortcuts 
vmap       <Leader>y    "+y
vmap       <Leader>d    "+d
nmap       <Leader>p    "+p
nmap       <Leader>P    "+P
vmap       <Leader>p    "+p
vmap       <Leader>P    "+P

"PLUGIN MAPPINGS
"==================================================================================================== 
"youcompleteme hotkeys
let   g:ycm_global_ycm_extra_conf                       =   "~/.ycm_extra_conf.py"
let   g:ycm_key_list_select_completion                  =   ['<TAB>']
let   g:ycm_key_list_previous_completion                =   ['<S-TAB>']
let   g:ycm_autoclose_preview_window_after_completion   =   0
let   g:ycm_python_binary_path = '/usr/bin/python3'

"ultisnips hotkeys
let   g:UltiSnipsExpandTrigger         =   "<c-l>"
let   g:UltiSnipsJumpForwardTrigger    =   "<c-s>"
let   g:UltiSnipsJumpBackwardTrigger   =   "<c-q>"

"If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit = "vertical"

"multiple cursors
set selection=inclusive

"airline
set laststatus=2
set noshowmode

let g:airline#extensions#tabline#enabled = 1 

"expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"easy motion
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

"switch.vim
let g:switch_custom_definitions =
	\ [
	\   ['<<', '>>'],
	\	['and', 'or']
	\ ]

"neomake
let g:neomake_place_signs = 0

"bufexplorer
let g:bufExplorerSortBy='name'

"ada mode
let g:ada_abbrev = 0
let g:ada_extended_tagging = 0
let g:ada_extended_completion = 0
let g:ada_gnat_extensions = 0

"listtoggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>fl'
let g:lt_height = 10
