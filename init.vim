syntax on
set background=dark
set nocompatible
set list
set number
set laststatus=2
set mouse=a
set termguicolors

let g:ale_virtualtext_cursor = 'none' 

call plug#begin()
	" plugins
	Plug 'morhetz/gruvbox'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'vim-airline/vim-airline'
	Plug 'jszakmeister/vim-togglecursor'
	Plug 'jmcantrell/vim-virtualenv'
	Plug 'tpope/vim-commentary'
	Plug 'scrooloose/nerdtree'
	Plug 'dense-analysis/ale'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'yggdroot/indentline'
	Plug 'kien/ctrlp.vim'
	Plug 'slim-template/vim-slim'
	Plug 'stylelint/stylelint'
	Plug 'bmatcuk/stylelint-lsp'
	Plug 'jeffkreeftmeijer/vim-numbertoggle'
	Plug 'nlknguyen/copy-cut-paste.vim'
	Plug 'davidhalter/jedi-vim'
	Plug 'ervandew/supertab'
call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set termguicolors
let g:bargreybars_auto = 0

autocmd VimEnter * NERDTree | wincmd p
nmap <C-n> :NERDTree<CR>
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" 
colorscheme gruvbox
let g:gruvbox_termcolors=16


" Tabe ustom keymaps
nmap tn :tabn<CR>
nmap tp :tabp<CR>


" CCP custom keymaps
let g:copy_cut_paste_no_mappings = 1

nmap uy <Plug>CCP_CopyLine
vmap uy <Plug>CCP_CopyText

nmap uo <Plug>CCP_CutLine
vmap uo <Plug>CCP_CutText

nmap up <Plug>CCP_PasteText

let g:SuperTabDefaultCompletionType = "<c-n>"

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'
