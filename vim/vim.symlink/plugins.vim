set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Sensible defaults
Bundle 'tpope/vim-sensible'

" Color theme
Bundle 'altercation/vim-colors-solarized'

" Text editing utilities
Bundle 'vim-scripts/Reindent'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'

" Syntax checker
Bundle 'scrooloose/syntastic'

" Auto-completion
Bundle 'tpope/vim-endwise'

" Frontend development
Bundle 'tpope/vim-haml'
Bundle 'juvenn/mustache.vim'
Bundle 'lunaru/vim-less'
Bundle 'kchmck/vim-coffee-script'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

call vundle#end()
