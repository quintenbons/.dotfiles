call plug#begin()
" Plug 'tpope/vim-sensible' " sane defaults. Im not sane

" Dependencies
Plug 'nvim-lua/popup.nvim' " Telescope
Plug 'nvim-lua/plenary.nvim' " Telescope

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gruvbox-community/gruvbox/' " colorscheme
Plug 'tomasr/molokai' " colorscheme (compatible with more terminals)

" LSP
Plug 'neovim/nvim-lspconfig' " see cs-lsp
Plug 'williamboman/nvim-lsp-installer' " lsp installer helper
Plug 'folke/lsp-colors.nvim' " LSP color highlight support fix for nvim
Plug 'tami5/lspsaga.nvim' " lsp ui, see cs-lsp
Plug 'maxmellon/vim-jsx-pretty'

" Rust
Plug 'simrat39/rust-tools.nvim'

" Debugging
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'

" Autocomplete
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/nvim-cmp' " see cs-cmp
Plug 'windwp/nvim-autopairs' " autopair
Plug 'onsails/lspkind-nvim' " add icons to complete menu

" Utils
Plug 'tpope/vim-surround'
Plug 'windwp/nvim-autopairs'

" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'hrsh7th/cmp-vsnip' " see cs-cmp
Plug 'hrsh7th/vim-vsnip' " see cs-cmp
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Navigation
Plug 'preservim/nerdtree' " browse files tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " fuzzy files finding

" Git
Plug 'tpope/vim-fugitive'
Plug 'samoshkin/vim-mergetool'

" Solidity
Plug 'thesis/vim-solidity', {'branch': 'main' }

call plug#end()
