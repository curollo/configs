set nocompatible
set title
set autoindent expandtab shiftwidth=2 softtabstop=2 tabstop=2
set ai
set magic
set backspace=indent,eol,start
set virtualedit=block
set encoding=utf8
set hidden notimeout
set hlsearch ignorecase incsearch smartcase splitbelow
set listchars=eol:¶,trail:•,tab:▸\  showbreak=¬\
set lazyredraw
set mouse=a
set nobackup noswapfile nowritebackup undofile undodir=~/.vim/undo undolevels=99999
set nowrap nofoldenable
set number relativenumber
set ruler
set cc=80
set cursorline
set scrolloff=3
set showmode showcmd showmatch

let mapleader=','
let python_highlight_all = 1
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.5, 'relative': v:true, 'yoffset': 1.0, 'border': 'none' } }

inoremap <C-c> <ESC>
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>, :let @/=''<CR>:noh<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <leader>w :set wrap!<CR>
nnoremap <silent><leader>i gg=G``<CR>
nnoremap <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

function! GitFZF()
    let path = trim(system('cd '.shellescape(expand('%:p:h')).' && git rev-parse --show-toplevel'))
    exe 'FZF ' . path
endfunction
command! GitFZF call GitFZF()

nnoremap <C-p> :GitFZF<CR>
nnoremap <silent><leader>f :FZF<CR>

set laststatus=2
set statusline=
set statusline+=%#Status#
set statusline+=%=
set statusline+=\ %f
set statusline+=\ x\ %n
set statusline+=\ %m
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %l\|%c

syntax on
set background=dark
hi CursorLineNr ctermfg=lightgreen ctermbg=NONE cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE
hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
hi Status ctermfg=7 ctermbg=NONE cterm=NONE
highlight Comment ctermfg=green
