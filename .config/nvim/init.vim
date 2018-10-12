nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

if has("unix")
  let s:uname = system("uname")
  let g:python_host_prog='/usr/bin/python'
  if s:uname == "Darwin\n"
    let g:python_host_prog='/usr/local/bin/python' 
  endif
endif

syntax on
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Load plugins
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hdima/python-syntax'
Plug 'hashivim/vim-terraform'
Plug 'rodjek/vim-puppet'
Plug 'vim-ruby/vim-ruby'
Plug 'pearofducks/ansible-vim'
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go'
call plug#end()
:set background=dark
let g:airline_theme='light'
let g:gruvbox_contrast_light='dark'
let g:gruvbox_contrast_dark='dark'
colorscheme gruvbox

" Generic stuff
set foldmethod=syntax

" Golang code folding
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
