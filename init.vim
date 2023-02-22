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
colorscheme gruvbox
let g:gruvbox_termcolors=16
