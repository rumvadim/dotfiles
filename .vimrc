set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set cindent
set hlsearch

autocmd FileType c,cpp,h autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufWritePre *.tpl,*.py,CMakeLists.txt :%s/\s\+$//e
au BufNewFile,BufRead *.cpp,*.h,*.hpp set syntax=cpp11

set directory=/home/vadim/.vim/swap/
set cc=129

nmap <F2> :A<CR>
nmap <F3> :tabp<CR>
nmap <F4> :tabn<CR>
nmap <F7> :set hls!<CR>

nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
