require("helpers")

map("n", ";R", ":!rustc % && %:p:r<CR>")
map("n", ";i", ":w <bar> silent !rustfmt %<CR>")
map("n", ";;", ":tabnew<CR>:ter cargo run<CR>")
map("n", ";r", ":tabnew<CR>:ter cargo run")
map("n", ";b", ":tabnew<CR>:ter cargo build<CR>")
map("n", ";c", ":tabnew<CR>:ter cargo check<CR>")
map("n", ";m", ":lua require'rust-tools.expand_macro'.expand_macro()<CR>")
map("n", ";d", ":tabnew<CR>:ter cargo screeps deploy<CR>")
map("n", ";t", ":tabnew<CR>:ter cargo test -- --show-output<CR>")
map("n", ";l", ":silent !cargo run < input > output<CR>")
map("n", ";k", ":tabnew<CR>:ter cargo run --release")

