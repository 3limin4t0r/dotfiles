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
colorscheme solarized

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
" Vim Configuration                                                            "
"------------------------------------------------------------------------------"

" Autoreload .vimrc on save.
"autocmd! bufwritepost .vimrc source %

" Syntax highlighting
syntax on

" Line numbers
set number

" Mouse support
set mouse=a

" Swapfile
set swapfile

" Set default location for tmp files.
set backupdir=~/tmp
set directory=~/tmp

" Set tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

" make backspace work like most other apps
set backspace=2 
