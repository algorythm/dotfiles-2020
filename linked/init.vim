call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
call plug#end()

colorscheme nord

" Copy yank to clipboard
set clipboard=unnamed
" Use tab to navigate intellisense
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Regular vim setup
set number relativenumber
set tabstop=2
" When indenting with '>', use 2 spaces
set shiftwidth=2
" ON pressing tab, insert 2 spaces
set expandtab
set smarttab
" set auto indentation
set ai

vnoremap > >gv
vnoremap < <gv
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
imap jj <Esc>

let g:deoplete#enable_at_startup = 1

""" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1