set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Sensible defaults
Bundle 'tpope/vim-sensible'

" Color theme
Bundle 'altercation/vim-colors-solarized'

" NERDTree
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

if has("gui_macvim")
  autocmd vimenter * NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
endif

" Text editing utilities
Bundle 'vim-scripts/Reindent'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'

" Syntax
Bundle 'scrooloose/syntastic'
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_messages = {'level': 'warnings'}

" Auto-completion
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-endwise'

" Searching
Bundle 'vim-scripts/SearchComplete'

" Frontend development
Bundle 'lunaru/vim-less'

" Ruby
Bundle 'vim-ruby/vim-ruby'

call vundle#end()
