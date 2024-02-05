"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(expand('~/.config/nvim/plugged'))

"}}}

" ================= looks and GUI stuff ================== "{{{
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'Jorengarenar/vim-MvVis'                           " move visual selection
"}}}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'JuliaEditorSupport/julia-vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'jpalardy/vim-slime'
Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'                                 " some very smooth ass scrolling
Plug 'wellle/tmux-complete.vim'                             " complete words from a tmux panes
Plug 'tpope/vim-eunuch'                                     " run common Unix commands inside Vim
Plug 'machakann/vim-sandwich'                               " make sandwiches
Plug 'mhinz/vim-startify'                                   " Startify
Plug 'tpope/vim-surround'                                   " Surround: ex: cs]) changes ]->)
Plug 'itchyny/lightline.vim'                                " lightweight version of powerline for vim.
Plug 'itchyny/vim-gitbranch'                                " Shows the git branch were working on - for use with lightline
Plug 'ryanoasis/vim-devicons'                               " pretty icons everywhere
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better folding and better syntax highlight
Plug 'qpkorr/vim-bufkill'                                   " Kill a buffer without closing the window with :BD 
Plug 'gennaro-tedesco/nvim-jqx'                             " JSON Handling: JqxList and JqxQuery
Plug 'ycm-core/YouCompleteMe'                               " Autocompletion: using language syntax and character extrapolation
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'rose-pine/neovim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'bling/vim-bufferline'

call plug#end()

" Rainbow parentheses
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Use themes
set termguicolors

"Vim Slime
let g:slime_target = "tmux"

"Themeing from sui
set mouse=a                                             " enable mouse scrolling
set clipboard+=unnamedplus                              " use system clipboard by default
set tabstop=4 softtabstop=4 shiftwidth=4 autoindent     " tab width
set expandtab smarttab                                  " tab key actions
set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
set fillchars+=vert:\▏                                  " requires a patched nerd font (try FiraCode)
"set wrap breakindent                                    " wrap long lines to the width set by tw
set encoding=utf-8                                      " text encoding
set number                                              " enable numbers on the left
set relativenumber                                      " current line is 0
set title                                               " tab title as file name
set noshowmode                                          " dont show current mode below statusline
set noshowcmd                                           " to get rid of display of last command
set conceallevel=2                                      " set this so we wont break indentation plugin
set splitright                                          " open vertical split to the right
set splitbelow                                          " open horizontal split to the bottom
"set tw=90                                               " auto wrap lines that are longer than that
set emoji                                               " enable emojis
set history=1000                                        " history limit
set backspace=indent,eol,start                          " sensible backspacing
set undofile                                            " enable persistent undo
set undodir=/tmp                                        " undo temp file directory
set foldlevel=0                                         " open all folds by default
set inccommand=nosplit                                  " visual feedback while substituting
set showtabline=0                                       " always show tabline
set grepprg=rg\ --vimgrep                               " use rg as default grepper

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Themeing
" let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'darker-community'
"colorscheme material
"

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif
hi Pmenu guibg='#00010a' guifg=white                    " popup menu colors
hi Comment gui=italic cterm=italic                      " italic comments
hi Search guibg=#b16286 guifg=#ebdbb2 gui=NONE          " search string highlight color
hi NonText guifg=bg                                     " mask ~ on empty lines
hi clear CursorLineNr                                   " use the theme color for relative number
hi CursorLineNr gui=bold                                " make relative number bold
hi SpellBad guifg=NONE gui=bold,undercurl               " misspelled words

" colors for git (especially the gutter)
hi DiffAdd  guibg=#0f111a guifg=#43a047
hi DiffChange guibg=#0f111a guifg=#fdd835
hi DiffRemoved guibg=#0f111a guifg=#e53935

" coc multi cursor highlight color
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

"}}}


" For lightline:
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
set guifont=DroidSansMono\ Nerd\ Font\ 11 " Note: Download this font using install script from https://github.com/ryanoasis/nerd-fonts#option-3-install-script and if on osx on local (using iterm2) must manually change profile/text to use this droidsans font (and install this font on local too)

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "python" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
"folding: zR open all fold, zM close all fold
autocmd BufReadPost,FileReadPost * normal zR

"YouCompleteMe
set encoding=utf-8
set guifont=DroidSansMono\ Nerd\ Font:h11
let g:webdevicons_enable_startify = 1                   " Startify

lua << EOF
require("rose-pine").setup({
	highlight_groups = {
		TelescopeBorder = { fg = "highlight_high", bg = "none" },
		TelescopeNormal = { bg = "none" },
		TelescopePromptNormal = { bg = "base" },
		TelescopeResultsNormal = { fg = "subtle", bg = "none" },
		TelescopeSelection = { fg = "text", bg = "base" },
		TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
	},
})
EOF
colorscheme rose-pine-moon

"Stuff for LSP (Python LSP)
let g:python3_host_prog = '/opt/homebrew/bin/python3'
