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
	Plug 'ryanoasis/vim-devicons'
	Plug 'sheerun/vim-polyglot'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ervandew/supertab'
	Plug 'w0rp/ale'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'yggdroot/indentline'
	Plug 'kien/ctrlp.vim'
	Plug 'slim-template/vim-slim'
	Plug 'stylelint/stylelint'
	Plug 'bmatcuk/stylelint-lsp'
	Plug 'jeffkreeftmeijer/vim-numbertoggle'
	Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
	Plug 'nlknguyen/copy-cut-paste.vim'
call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set termguicolors
let g:bargreybars_auto = 0

" 
colorscheme gruvbox
let g:gruvbox_termcolors=16


" Tabe ustom keymaps
nmap tn :tabn
nmap tp :tabp


" CCP custom keymaps
let g:copy_cut_paste_no_mappings = 1

nmap uy <Plug>CCP_CopyLine
vmap uy <Plug>CCP_CopyText

nmap uo <Plug>CCP_CutLine
vmap uo <Plug>CCP_CutText

nmap up <Plug>CCP_PasteText
