syntax on
set background=dark
set nocompatible
set list
set number
set laststatus=2
set mouse=a
set termguicolors

let g:ale_virtualtext_cursor = 'none' 

" plugins
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

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

" Lua code
lua <<EOF

EOF
