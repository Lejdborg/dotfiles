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
map <Leader>n <plug>NERDTreeTabsToggle<CR>

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Text editing utilities
Bundle 'vim-scripts/Reindent'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'

" Syntax
Bundle 'scrooloose/syntastic'
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}

" Auto-completion
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-endwise'

" Go to file
Bundle 'wincent/command-t'
let g:CommandTMaxHeight=20

" Frontend development
Bundle 'tpope/vim-haml'
Bundle 'juvenn/mustache.vim'
Bundle 'lunaru/vim-less'
Bundle 'kchmck/vim-coffee-script'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

call vundle#end()
