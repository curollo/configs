syn on | colo lunaperche | hi Comment ctermfg=75
set nocp ts=2 sw=2 et ai magic nu rnu hls scs is ru cc=80 cul lz
let mapleader=',' | set rtp+=/usr/share/doc/fzf/examples/ | let g:fzf_layout = {'window': {'width': 1.0, 'height': 0.5, 'relative': v:true, 'yoffset': 1.0, 'border': 'none'}} | nnoremap <silent><leader>p :FZF<CR> | nnoremap <silent><leader>f :exe 'FZF ' . trim(system('cd '.shellescape(expand('%:p:h')).' && git rev-parse --show-toplevel'))<CR>
