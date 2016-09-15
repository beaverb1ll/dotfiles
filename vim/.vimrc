set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ------Plugins-------
"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

""""""""
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

colorscheme Monokai
let &colorcolumn="80"


" Use :help 'option' to see the documentation for the given option.
set autoindent
set backspace=indent,eol,start
set complete-=i
set showmatch
set showmode
set smarttab
set nrformats-=octal
set shiftround

set ttimeout
set ttimeoutlen=50

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

set autoread

set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list

inoremap <C-U> <C-G>u<C-U>

set number
set hlsearch
set ignorecase
set smartcase

" Don't use Ex mode, use Q for formatting
map Q gq

" do not history when leavy buffer
set hidden

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

set completeopt=menuone,longest,preview

"
" Basic shortcuts definitions
"  most in visual mode / selection (v or ⇧ v)
"

" indent / deindent after selecting the text with (⇧ v), (.) to repeat.
vnoremap <Tab> >
vnoremap <S-Tab> <
" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}
" Text wrap simpler, then type the open tag or ',"
vmap <C-w> S
" Tabs
nnoremap <C-b>  :tabprevious<CR>
inoremap <C-b>  <Esc>:tabprevious<CR>i
nnoremap <C-n>  :tabnext<CR>
inoremap <C-n>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-k>  :tabclose<CR>
inoremap <C-k>  <Esc>:tabclose<CR>i

" lazy ':'
map \ :

let mapleader = ','
nnoremap <Leader>p :set paste<CR>
nnoremap <Leader>o :set nopaste<CR>

" this machine config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"------------------------------------------------------------------------------
" UltiSnips
"------------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<f1>"
let g:did_UltiSnips_vim_after = 1

"------------------------------------------------------------------------------
" airline and theme
"------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:airline_exclude_preview =1

"------------------------------------------------------------------------------
" vim-better-whitespace
"------------------------------------------------------------------------------
au VimEnter * ToggleStripWhitespaceOnSave

"------------------------------------------------------------------------------
" CtrlP
"------------------------------------------------------------------------------
let g:ctrlp_use_caching = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1

"ignore following symlinks
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](build|\.git|\.hg|\.svn)$',
  \ 'file': '\v.(exe|so|dll)$',
  \}

"------------------------------------------------------------------------------
" YouCompleteMe
"------------------------------------------------------------------------------
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_extra_conf_globlist = ['~/git/*']
let g:ycm_autoclose_preview_window_after_insertion = 1
