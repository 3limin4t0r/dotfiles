"------------------------------------------------------------------------------"
" Pathogen Configuration                                                       "
"------------------------------------------------------------------------------"
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

execute pathogen#infect()

"------------------------------------------------------------------------------"
" Ctrl-p Configuration                                                         "
"------------------------------------------------------------------------------"
" git clone git@github.com:kien/ctrlp.vim.git

"------------------------------------------------------------------------------"
" Airline Configuration                                                        "
"------------------------------------------------------------------------------"
" git clone git@github.com:bling/vim-airline.git

set laststatus=2

"------------------------------------------------------------------------------"
" Solarized Configuration                                                      "
"------------------------------------------------------------------------------"
" git clone git://github.com/altercation/vim-colors-solarized.git

syntax enable
set background=dark
"colorscheme solarized

"------------------------------------------------------------------------------"
" Easy Motion Configuration                                                    "
"------------------------------------------------------------------------------"
" git clone git@github.com:Lokaltog/vim-easymotion.git

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"------------------------------------------------------------------------------"
" NERD Tree Configuration                                                      "
"------------------------------------------------------------------------------"
" git clone git@github.com:scrooloose/nerdtree.git

map <C-n> :NERDTreeToggle<CR>

"------------------------------------------------------------------------------"
" NERD Tree Tabs Configuration                                                 "
"------------------------------------------------------------------------------"
" git clone git@github.com:jistr/vim-nerdtree-tabs.git

let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>n <plug>NERDTreeTabsToggle<CR>

"------------------------------------------------------------------------------"
" Vim Configuration                                                            "
"------------------------------------------------------------------------------"

" Autoreload .vimrc on save.
autocmd! bufwritepost .vimrc source %

" Syntax highlighting.
syntax on

" Line numbers.
set number

" Mouse support.
set mouse=a

" Swapfile.
set swapfile

" Set default location for tmp files.
set backupdir=~/tmp
set directory=~/tmp

" Set tabs to spaces.
set tabstop=4
set shiftwidth=4
set expandtab

" Make backspace work like most other apps.
set backspace=2 

" Incremental search.
set incsearch

" Highlight search.
set hlsearch

" C style indention.
set cindent

" Open file at same position as closed.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
