"Vim Plug (required)
"==================================================================================================== 
set shell=bash
set splitbelow
filetype off                  " required
call plug#begin('~/.vim/plugged')

"PLUGIN LIST
"==================================================================================================== 
"Plug 'rhysd/vim-clang-format'
Plug 'SirVer/ultisnips'             " snippet engine
Plug 'Valloric/YouCompleteMe'
Plug 'davidhalter/jedi-vim'
Plug 'djjcast/mirodark'             " scheme
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'           " snippet database
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neomake/neomake'
Plug 'plasticboy/vim-markdown'
Plug 'python-mode/python-mode'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'     " comment hotkeys
Plug 'scrooloose/nerdtree'		    " browse project
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rsi'                " gnu readline for insert mode
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'      " for shellcheck linting

"Vim Plug (Required)
"==================================================================================================== 
call plug#end() 
filetype plugin indent on    " required

"BASIC EDITOR SETUP
"==================================================================================================== 
let mapleader = "\<Space>"
set autoread
set backspace=2                   " make backspace work like most other apps
set cindent
set cinoptions=>1s,e0,n0,f0,{0,}0,^0,L0,:s,=s,l0,b0,gs,hs,N0,ps,ts,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,k0,m0,j0,J0,)20,*70,#0
set colorcolumn=80
set cursorline
set expandtab
set guioptions+=T                 " remove toolbar
set guioptions+=b                 " horizontal scrollbar
set guioptions+=m                 " remove menu bar
set mouse=a
set nofoldenable                  " disable the folding feature
set nostartofline                 " cursor position remains the same when switching away/back to buffer
set noswapfile                    " no tmp files
set nrformats=bin,octal,hex,alpha " increment/decrement with C-a and C-x
set number                        " Line numbers
set relativenumber                " relative line numbers
set shiftwidth=4                  " Width to shift over
set tabstop=4                     " 4 spaces per tabulation
tabdo set nowrap                  " to avoid long lines splitting
set encoding=UTF-8

"FONT SETTINGS
"==================================================================================================== 
"set guifont=Monospace\ 10 "font

"COLOR SCHEME
"==================================================================================================== 
colorscheme   mirodark " darkblue
set           guicursor+=a:blinkon0
"highlight     Cursor                  guifg=black   guibg=white
"highlight     MatchParen              guifg=red     guibg=none
"highlight     iCursor                 guifg=black   guibg=white

highlight     Cursor                  ctermfg=black   ctermbg=white
highlight     MatchParen              ctermfg=red     ctermbg=none
highlight     iCursor                 ctermfg=black   ctermbg=white

"FILE TYPES
"==================================================================================================== 
au   BufNewFile,BufRead   *.cu     set   ft=cuda.cpp
au   BufNewFile,BufRead   *.cuh    set   ft=cuda.cpp
au   BufNewFile,BufRead   *.glsl   set   ft=cpp.cuda

"KEYBOARD MAPPINGS
"==================================================================================================== 
vnoremap   <leader>sed  :s/\v//g
nnoremap   <leader>read ! 
nnoremap   <leader>rel :tabdo windo set relativenumber!<CR>

nnoremap   <leader>term :terminal<CR>
nnoremap   <leader>w    :w<CR>
nnoremap   <leader>q    :q<CR>
nnoremap   <leader>x    :x<CR>
nnoremap   <leader>a    :A<CR>
nnoremap   <leader>m    :call ToggleMouseMode()<CR>

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
let   g:ycm_autoclose_preview_window_after_completion   =   0
let   g:ycm_confirm_extra_conf = 0
let   g:ycm_global_ycm_extra_conf                       =   "~/.ycm_extra_conf.py"
let   g:ycm_key_list_previous_completion                =   ['<S-TAB>']
let   g:ycm_key_list_select_completion                  =   ['<TAB>']
let   g:ycm_python_binary_path = '/usr/bin/python3'
let   g:ycm_server_python_interpreter = 'python3'

nnoremap <Leader>dec :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>def :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>doc :YcmCompleter GetDoc<CR>
nnoremap <Leader>inc :YcmCompleter GoToInclude<CR>
nnoremap <Leader>ref :YcmCompleter GoToReferences<CR>
nnoremap <Leader>sym :YcmCompleter GoToSymbol<CR>

"ultisnips hotkeys
let   g:UltiSnipsExpandTrigger         =   "<c-l>"
let   g:UltiSnipsJumpBackwardTrigger   =   "<c-q>"
let   g:UltiSnipsJumpForwardTrigger    =   "<c-s>"

"If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit = "vertical"

"multiple cursors
set selection=inclusive

"airline
set laststatus=2
set noshowmode

let g:airline#extensions#tabline#enabled = 1 

"expand region
vmap   <C-v>   <Plug>(expand_region_shrink)
vmap   v       <Plug>(expand_region_expand)

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
let g:bufExplorerShowRelativePath = 1

"nerdtree
"enable line numbers
let NERDTreeShowLineNumbers=1
"make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

"clang-format
"let g:clang_format#detect_style_file = 1
let g:clang_format#auto_format = 0

"cscope
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

"pymode
let g:pymode_options_max_line_length = 140
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1

"other functions
function ToggleMouseMode()
    if &mouse == 'v'
        echo "Switching mouse mode to a"
        set mouse=a
    elseif &mouse == 'a'
        echo "Switching mouse mode to v"
        set mouse=v
    endif
endfunction function

function ConvertMacToLowerCaseFormat() range
    '<,'>s/\%V\v(..)(..)(..)(..)(..)(..)(..)(..)/\L\1:\L\2:\L\3:\L\4:\L\5:\L\6:\L\7:\L\8/g
endfunction

function ConvertMacToUpperCaseFormat() range
    '<,'>s/\%V\v(..):(..):(..):(..):(..):(..):(..):(..)/\U\1\U\2\U\3\U\4\U\5\U\6\U\7\U\8/g
endfunction

function HilightTrailingSpaces()
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
endfunction
