" personal mappings
nn , <Nop>
nn ,e :NERDTree<CR>
nn <C-p> :Files<CR>
nn ,o :bp<CR>

nn ,n :set nowrap<CR>

" comment


" direct execute
nn ,f :tabnew<CR>:ter %:p<CR>

" rust
nn ;R :!rustc % && %:p:r<CR>
nn ;i :w <bar> silent !rustfmt %<CR>
nn ;; :tabnew<CR>:ter cargo run<CR>
nn ;r :tabnew<CR>:ter cargo run
nn ;b :tabnew<CR>:ter cargo build<CR>
nn ;c :tabnew<CR>:ter cargo check<CR>
nn ;m :lua require'rust-tools.expand_macro'.expand_macro()<CR>
nn ;d :tabnew<CR>:ter cargo screeps deploy<CR>
nn ;t :tabnew<CR>:ter cargo test -- --show-output<CR>
