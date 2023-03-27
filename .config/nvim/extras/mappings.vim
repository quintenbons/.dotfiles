" utilities & navigation
nn , <Nop>
nn ,e :NERDTree<CR>
nn <C-p> :Files<CR>
" nn ,o :bp<CR>
nn ,n :set nowrap<CR>

" fmt
" nn ,j :w <bar> silent !jsfmt -w %<CR>

" direct execute
" nn ,f :tabnew<CR>:ter %:p<CR>

" md/rmd
nn ,c i<span style="<Esc>mma"></span><Esc>`ma
vn ,c "ms<span style="<Esc>mma"><Esc>"mpa</span><Esc>`ma

" latex
nn ,a i\int \limits _{} ^{} {}<Esc>
nn ,s i\sum \limits _{} ^{} {}<Esc>
