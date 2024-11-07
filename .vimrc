syntax on
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set ai magic number ruler cc=80 cursorline relativenumber
set hlsearch nowrap ignorecase smartcase incsearch splitbelow
set bs=indent,eol,start virtualedit=block
set encoding=utf8 hidden notimeout lazyredraw
set undofile undodir=~/.vim/undo
set listchars=eol:¶,trail:•,tab:▸\  showbreak=¬\ showmode showcmd showmatch
set laststatus=3 statusline=%#Status#%=\ %f\ x\ %n\ %m\ %{&fileencoding?&fileencoding:&encoding}\ [%{&fileformat}]\ %l\|%c
let mapleader=',' | inoremap <C-c> <ESC> | nnoremap <leader>, :let @/=''<CR>:noh<CR>
vnoremap <leader>y "+y | nnoremap <leader>y "+y
nnoremap <leader>l :set list!<CR>
nnoremap <leader>w :set wrap!<CR>
nnoremap <silent><leader>i gg=G``<CR>
nnoremap <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent><leader>p :FZF<CR>
nnoremap <silent><leader>f :exe 'FZF ' . trim(system('cd '.shellescape(expand('%:p:h')).' && git rev-parse --show-toplevel'))<CR>
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.5, 'relative': v:true, 'yoffset': 1.0, 'border': 'none' } }
colo lunaperche
hi Normal ctermbg=NONE
hi Status ctermbg=NONE
hi Comment ctermfg=75
