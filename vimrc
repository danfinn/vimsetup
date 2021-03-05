set nocp
set tabpagemax=100
source ~/.vim/autoload/pathogen.vim
execute pathogen#infect()

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on

let g:ackprg = 'ag --nogroup --nocolor --column'
set runtimepath^=~/.vim/bundle/ag

set runtimepath^=~/.vim/bundle/tcomment_vim

"for NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

colorscheme Crystallite

set laststatus=2
set statusline+=%{fugitive#statusline()}
set statusline+=[%F]
set statusline+=[%{strftime(\"%m/%d/%y\ -\ %H:%M\")}]


