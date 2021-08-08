set path+=**

call plug#begin('~/.vim/plugged')

" Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Telescope + requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Language server support

" Add auto format
Plug 'sbdchd/neoformat'

" Python black formatter
Plug 'ambv/black'

call plug#end()

syntax on

colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

let mapleader = " " " map leader to Space

set number
set relativenumber
" set keymap=german-qwertz

vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"augroup fmt
"  autocmd!
"  autocmd BufWritePre * undojoin | Neoformat
"augroup END

autocmd BufWritePre *.py execute ':Black'
