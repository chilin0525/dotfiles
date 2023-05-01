:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set termguicolors

augroup colorextend
  autocmd!
  autocmd ColorScheme * call onedark#extend_highlight("LineNr", { "fg": { "gui": "#CCCCCC" } })
  autocmd ColorScheme * call onedark#extend_highlight("CursorLineNr", { "fg": { "gui": "#FF8888" } })
augroup END

if !has('nvim')
    set cursorline
    set cursorlineopt=number
endif

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'jistr/vim-nerdtree-tabs' " tab for NerdTree
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot' " syntax highlight
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim' " onedark theme

call plug#end()


" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" NERDTree tab config
let g:nerdtree_tabs_open_on_console_startup = 1
" CTRL + b to switch tab
map <C-b> <plug>NERDTreeTabsToggle<CR> 

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()


" COC config

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

colorscheme onedark

