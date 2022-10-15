require("helpers")

map("n", ",m", ":!pandoc % -o %:r.pdf && evince %:r.pdf<CR>")
