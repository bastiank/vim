" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
colorscheme torte
"set mouse=a
if has("mouse")
    "    set mouse=a
endif

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
compiler ruby         " Enable compiler support for rubyo

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set backspace=2

set nowrap

"autocompletion of begin, for, ...
imap <S-CR> <ESC>:execute 'normal o' . EndToken()<CR>O

map <F2> :set list!<cr>
map <F3> :NERDTreeToggle<cr>
map <F4> :set nu!<cr>
map <F6> :set wrap!<cr>
nnoremap <silent> <F7> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
"map <F5> gg=G<cr>
set pastetoggle=<F5>
set tw=78
set showmatch
"set virtualedit=all
"au Syntax * syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/
set hlsearch
set ignorecase
set number

map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-n> <Esc>:tabnew<CR>

" TListPlugin
"let Tlist_Show_One_File = 1


" spelling
"setlocal spell spelllang=en_us
"setlocal spell spelllang=de
"set invspell
"nnoremap <C-down> ]s
"nnoremap <C-up> [s
au BufNewFile,BufRead *.less set filetype=less
set tags+=gems.tags

set background=dark

execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim

set list listchars=tab:\ \ ,trail:␣,extends:⇉,precedes:⇇
