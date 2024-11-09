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
Plug 'nvim-telescope/telescope.nvim'
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'Jorengarenar/vim-MvVis'                           " move visual selection
"}}}
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " lsp 
Plug 'JuliaEditorSupport/julia-vim'
Plug 'tpope/vim-fugitive'
Plug 'jpalardy/vim-slime'
Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'                                 " some very smooth ass scrolling
Plug 'wellle/tmux-complete.vim'                             " complete words from a tmux panes
Plug 'tpope/vim-eunuch'                                     " run common Unix commands inside Vim
Plug 'machakann/vim-sandwich'                               " make sandwiches
"Plug 'mhinz/vim-startify'                                   " Startify
Plug 'tpope/vim-surround'                                   " Surround: ex: cs]) changes ]->)
Plug 'itchyny/lightline.vim'                                " lightweight version of powerline for vim.
Plug 'itchyny/vim-gitbranch'                                " Shows the git branch were working on - for use with lightline
Plug 'ryanoasis/vim-devicons'                               " pretty icons everywhere
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Better folding and better syntax highlight
Plug 'qpkorr/vim-bufkill'                                   " Kill a buffer without closing the window with :BD 
Plug 'gennaro-tedesco/nvim-jqx'                             " JSON Handling: JqxList and JqxQuery
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'rose-pine/neovim'
"Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-telescope/telescope-symbols.nvim'
"Plug 'akinsho/bufferline.nvim', { 'tag': 'V2.*', 'requires': 'kyazdani42/nvim-web-devicons'} "Display tabs at top of screen. kinda ugly
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvimdev/dashboard-nvim'
Plug 'dense-analysis/ale'

" Deps
Plug 'stevearc/dressing.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'

" Optional deps
Plug 'nvim-tree/nvim-web-devicons' "or Plug 'echasnovski/mini.icons'
Plug 'HakonHarnes/img-clip.nvim'
Plug 'zbirenbaum/copilot.lua'
Plug 'MeanderingProgrammer/render-markdown.nvim'

" Yay, pass source=true if you want to build from source
Plug 'yetone/avante.nvim', { 'branch': 'main'}

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
      \'colorscheme': 'one',
      \}
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

"colorscheme rose-pine
"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_italic=1
"colorscheme gruvbox
"set background=dark
lua << EOF
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    term_colors = true,
    integrations = {
        coc_nvim = true,
        telescope = true,
        treesitter = true,
    },
})
EOF
colorscheme catppuccin
set background=dark

"Stuff for LSP (Python LSP)
let g:python3_host_prog = '/usr/bin/python3'

"lua << EOF
"require('bufferline').setup {
  "options = {
    "offsets = {{ filetype = "NERDTree", text = "File Explorer", text_align = "left" }},
    "separator_style = "slant",
    "show_buffer_close_icons = false,
    "show_close_icon = false,
  "}
"}
"EOF


lua << EOF
require("dashboard").setup({
    config = {
        dashboard_default_executive = 'telescope',
        dashboard_custom_header = {
            ' ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
            ' ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
            ' ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
            ' ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
            ' ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
            ' ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
            '                                                  ',
        },
        dashboard_custom_shortcut = {
            last_session       = 'SPC s l',
            find_history       = 'SPC f h',
            find_file          = 'SPC f f',
            new_file           = 'SPC c n',
            change_colorscheme = 'SPC t c',
            find_word          = 'SPC f a',
            book_marks         = 'SPC f b',
        },
        dashboard_custom_footer = {'Neovim - Edit at the speed of thought'}
    }
})
EOF


"Ale

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\   'sh':  ['shfmt']
\}
let g:ale_python_pylint_options = '--disable=missing-docstring'
let g:ale_shell_sh_shellcheck_executable = '/usr/bin/shfmt' " Specify the path to shellcheck if it's not in your $PATH
" Python linters
let g:ale_linters = {
\   'python': ['flake8'],
\}


"I dont want change history to persist between sessions
set noundofile

"Show number of search matches in status line - why tf is this disabled by
"default lol
set shortmess-=S
"AI Tools
lua << EOF
-- deps:
require('img-clip').setup()
require('copilot').setup()
require('render-markdown').setup()
require('avante_lib').load()
require('avante.api').build()
require('avante').setup()
EOF
