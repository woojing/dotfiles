colorscheme slate
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set hidden

if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'


NeoBundle 'unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-session'
NeoBundle 'thinca/vim-unite-history'

NeoBundle 'junkblocker/unite-tasklist' " task list source for unite.vim
NeoBundle 'vim-scripts/ag.vim' " Use ag, the_silver_searcher (better than ack, which is better than grep)

NeoBundle 'terryma/vim-multiple-cursors' " True Sublime Text style multiple selections for Vim
NeoBundle 'kien/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder.
NeoBundle 'sjbach/lusty' " LustyExplorer / LustyJuggler for Vim
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'bling/vim-airline' " So much faster than Powerline! :)


filetype plugin indent on

NeoBundleCheck
let g:EasyMotion_leader_key = '<space>'
nnoremap <space>s :Unite -quick-match buffer<cr>
nnoremap <space>/ :Unite grep:.<cr>

