scriptencoding utf-8
set encoding=utf-8
set showmatch
set ignorecase
set visualbell

set number
set smartindent
set tabstop=4
set autoindent
set shiftwidth=4

set backspace =indent,eol,start

set hlsearch
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

syntax on
filetype plugin indent on
:highlight Pmenu ctermfg=DarkGreen
"filetype plugin indent on

" 全角スペース・行末のスペース・タブの可視化
if has("syntax")
	syntax on
	" PODバグ対策
	syn sync fromstart
	function! ActivateInvisibleIndicator()
		" 下の行の"　"は全角スペース
		syntax match InvisibleJISX0208Space "　" display containedin=ALL
		highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
	endfunction
	augroup invisible
	autocmd! invisible
	autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
	augroup END
endif

" key bind
nnoremap <silent>,ga :<C-u>! git add %<CR>
nnoremap <silent>,pe :<C-u>! perl %<CR>
nnoremap <silent><C-p> :<C-u>! perl -c %<CR>
inoremap <C-d> use Data::Dumper; print Dumper($hoge);<CR>



" vundleを使うためのおまじない
"set rtp+=~/.vim/vundle/
"call vundle#rc('~/.vim/bundle')

" 使うプラグインを指定
"Bundle 'petdance/vim-perl'
"Bundle 'hotchpotch/perldoc-vim'
"Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neocomplcache-snippets-complete'
"Bundle 'thinca/vim-quickrun'

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Select with <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplcache_ctags_arguments_list = {
  \ 'perl' : '-R -h ".pm"'
  \ }

let g:neocomplcache_snippets_dir = "~/.vim/snippets"
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default'    : '',
    \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" for snippets
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
smap <C-k> <Plug>(neocomplcache_snippets_expand)
