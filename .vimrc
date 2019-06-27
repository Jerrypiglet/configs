set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

" set the runtime path to include Vundle and 0initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" " call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin '907th/vim-auto-save'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" "filetype plugin on

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set runtimepath+=~/.vim_runtime
let g:go_version_warning = 0
set number
set statusline+=%F
set mouse=a
let g:auto_save = 1  " enable AutoSave on Vim startup

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

let g:markdown_syntax_conceal = 0

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight  CursorLine cterm=None ctermbg=DarkGrey ctermfg=None

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine cterm=None ctermbg=None ctermfg=None

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine cterm=None ctermbg=DarkGrey ctermfg=None"

noremap U <C-R>
