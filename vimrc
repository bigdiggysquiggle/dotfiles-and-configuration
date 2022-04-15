unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set wildmenu
set noexpandtab
set linebreak
set lazyredraw
set showmatch
set hlsearch
set incsearch
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
map <F5> :NERDTreeToggle<CR>
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

source $HOME/.vim/after/plugin/final.vim

command W w !sudo tee % >/dev/null
