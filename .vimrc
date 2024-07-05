set nocompatible title
set ai magic expandtab shiftwidth=2 softtabstop=2 tabstop=2
set bs=indent,eol,start virtualedit=block
set encoding=utf8 hidden notimeout lazyredraw
set hlsearch ignorecase incsearch smartcase splitbelow
set listchars=eol:¶,trail:•,tab:▸\  showbreak=¬\ showmode showcmd showmatch
set nobackup noswapfile nowritebackup undofile undodir=~/.vim/undo undolevels=99999
set nowrap nofoldenable number relativenumber ruler cc=80 cursorline scrolloff=3
set laststatus=2 statusline=%#Status#%=\ %f\ x\ %n\ %m\ %{&fileencoding?&fileencoding:&encoding}\ [%{&fileformat}]\ %l\|%c

let mapleader=',' | inoremap <C-c> <ESC> | nnoremap <leader>, :let @/=''<CR>:noh<CR>
vnoremap <leader>y "+y | nnoremap <leader>y "+y
nnoremap <leader>l :set list!<CR> | nnoremap <leader>w :set wrap!<CR> | nnoremap <silent><leader>i gg=G``<CR> | nnoremap <silent><leader>n :bnext<cr> | nnoremap <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent><leader>p :FZF<CR> | nnoremap <silent><leader>f :exe 'FZF ' . trim(system('cd '.shellescape(expand('%:p:h')).' && git rev-parse --show-toplevel'))<CR>

syntax on | set background=dark | colo lunaperche
hi Normal guibg=NONE ctermbg=NONE | hi Status cterm=NONE | hi Comment ctermfg=75
let python_highlight_all = 1 | let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.5, 'relative': v:true, 'yoffset': 1.0, 'border': 'none' } }
