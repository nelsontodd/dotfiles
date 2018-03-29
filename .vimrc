execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set tabstop=2
set shiftwidth=2
set showmatch           " Show matching brackets 
set number              " Show the line numbers on the left side 
set textwidth=0         " Hard-wrap long lines as you type them 
set expandtab           " Insert spaces when TAB is pressed.                                                                                                                   
set linespace=0         " Set line-spacing to minimum.                                                                                                                          
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set splitbelow
set splitright
set background=dark
colorscheme solarized
hi Normal ctermbg=none
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{fugitive#statusline()} 
set statusline+=%*
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []  }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Tmux stuff
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
