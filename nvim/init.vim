lua require("qubbit")

let mapleader = " "

set expandtab
set tabstop=2
set shiftwidth=2
set number
set noswapfile
set clipboard+=unnamedplus

colorscheme onedark

au FileType json setlocal equalprg=jq\ --indent\ 2\ .

" format XML (requires xmllint)
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType ruby setlocal equalprg=rufo

au FileType elixir nnoremap <buffer> <leader>d Orequire<space>IEx;<space>IEx.pry()<esc>
au FileType ruby nnoremap <buffer> <leader>d Orequire<space>'pry';<space>binding.pry<esc>
au FileType jsx, javascript nnoremap <buffer> <leader>d Odebugger;<esc>
au FileType tsx, typescript  nnoremap <buffer> <leader>d Odebugger;<esc>

au FileType typescript nnoremap <Leader>i "ayiwoconsole.log('<C-R>a:', <C-R>a);<Esc>
au FileType typescript xnoremap <Leader>i "ayoconsole.log('<C-R>a:', <C-R>a);<Esc>
au FileType javascript nnoremap <Leader>i "ayiwoconsole.log('<C-R>a:', <C-R>a);<Esc>
au FileType javascript xnoremap <Leader>i "ayoconsole.log('<C-R>a:', <C-R>a);<Esc>

au FileType elixir nnoremap <leader>i iIO.inspect<space><esc>==$
au FileType elixir nnoremap <leader>I "zyiwoIO.inspect<space><c-r>z,<space>label:<space>"<c-r>z"<esc>==$

autocmd VimResized * wincmd =
