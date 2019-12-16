" 使用Vundle.vim配置vim Plugins
set nocompatible              " be IMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, requried
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/L9'
" XML
Plugin 'othree/xml.vim'
" HTML
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
" CSS
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'
" javascript or node
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'easymotion/vim-easymotion'
Plugin 'sidorares/node-vim-debugger'
Plugin 'posva/vim-vue'
" Plugin 'moll/vim-node'
Plugin 'feix760/vim-javascript-gf'
" weiChat miniprogram
Plugin 'chemzqm/wxapp.vim'
" markdown
Plugin 'plasticboy/vim-markdown'
" Plugin 'iamcco/mathjax-support-for-mkdp' "markdown-preview.vim with MathJax support for typesetting math
" Plugin 'iamcco/markdown-preview.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'

" Plugin 'majutsushi/tagbar' " taglist
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'marijnh/tern_for_vim' " javascript omnifunc
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter' " comment code
Plugin 'godlygeek/tabular' " algin cols
Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-fugitive' " git
Plugin 'yssl/QFEnter' " Open a Quickfix item in a window you choose. (Vim plugin)
" Plugin 'feix760/autospace.vim'
Plugin 'feix760/taboo.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
" Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'Raimondi/delimitMate'
" Plugin 'vim-scripts/matchit.zip' " extended % matching for HTML, LaTeX, and many other languages

Plugin 'mileszs/ack.vim'
" Bundle 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'editorconfig/editorconfig-vim'


" All of your plugins must be added before the following line
call vundle#end()            " requried
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put non-Plugin stuff after this line

" posva/vim-vue {
  let g:vue_disable_pre_processors = 1
" }

" scrooloose/nerdcommenter {
  let g:netrw_altv = 1
  let g:NERDSpaceDelims = 1
  let g:NERDCompactSexyComs = 1
  let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
  let g:NERDCommentEmptyLines = 1
" }

" scrooloose/nerdtree {
  let g:NERDTreeWinSize = 30
  nn <leader>n :NERDTreeToggle<cr>
" }

" mxw/vim-jsx {
  let g:jsx_ext_required = 0
" }

" Valloric/YouCompleteMe {
  " set completeopt-=preview
  let g:ycm_key_list_select_completion = ['<Down>']
  let g:ycm_key_list_previous_completion = ['<Up>']
  let g:ycm_auto_trigger = 0
  let g:ycm_key_invoke_completion = '<C-N>'
" }

" SirVer/ultisnips {
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

  let g:snips_author = '雷耀强'
  let g:snips_mail = '1010486863@qq.com'
" }

" Chiel92/vim-autoformat {
  let g:autoformat_autoindent = 0
  let g:autoformat_retab = 0
  let g:autoformat_remove_trailing_spaces = 0

  let g:formatdef_cssbeautify = '"css-beautify -f -"'
  let g:formatters__css = ['cssbeautify']
" }
"
" mxw/vim-jsx {
  let g:autoformat_verbosemode = 1
  let g:formatters_jsx = ['jsbeautify_javascript', 'pyjsbeautify_javascript', 'jscs']
  let g:formatters_javascript_jsx = ['jsbeautify_javascript', 'pyjsbeautify_javascript', 'jscs']
" }

" plasticboy/vim-markdown {
  let g:vim_markdown_folding_disabled = 1
  let g:vim_markdown_no_default_key_mappings = 1
" }

" JamshedVesuna/vim-markdown-preview {
  let vim_markdown_preview_hotkey='<C-m>'
  let vim_markdown_preview_browser='Google Chrome'
  let vim_markdown_preview_github=1
  let vim_markdown_preview_toggle=1
" }

" feix760/taboo.vim {
  let g:taboo_tab_format = ' %N%m %s '
  let g:taboo_modified_tab_flag = '+'
" }

" yssl/QFEnter {
  let g:qfenter_open_map = ['<CR>', 'o']
  let g:qfenter_vopen_map = ['<C-v>']
  let g:qfenter_hopen_map = ['<C-x>']
  let g:qfenter_topen_map = ['<C-t>']
" }

" majutsushi/tagbar {
  let g:tagbar_type_javascript = {
       \ 'ctagsbin': '/usr/local/bin/jsctags'
       \ }
  nn <leader>t :TagbarToggle<cr>
" }

" ctrlp {
  " let g:ctrlp_map = '<c-u>'
  let g:ctrlp_working_path_mode = 'w'
  let g:ctrlp_custom_ignore = {
       \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules|dev)$',
       \ 'file': '\v\.(exe|so|dll)$',
       \ 'link': 'some_bad_symbolic_links',
       \ }
" }

" godlygeek/tabular {
  vn <leader>a;  :Tabularize /^[^:]*\zs:<cr>
  vn <leader>a=  :Tabularize /^[^=]*\zs=<cr>
" }

" mattn/emmet-vim {
  let g:user_emmet_settings = {
      \ 'variables': {
      \   'lang': "zh_CN",
      \   'locale': "zh_CN"
      \ },
      \ 'html' : {
      \     'default_attributes': {
      \         'script': [],
      \         'button': [{'type': 'button'}]
      \     }
      \ },
      \ 'wxss': {
      \   'extends': 'css',
      \ },
      \ 'wxml': {
      \   'extends': 'html',
      \   'aliases': {
      \     'div': 'view',
      \     'span': 'text',
      \   },
      \  'default_attributes': {
      \     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
      \     'navigator': [{'url': '', 'redirect': 'false'}],
      \     'scroll-view': [{'bindscroll': ''}],
      \     'swiper': [{'autoplay': 'false', 'current': '0'}],
      \     'icon': [{'type': 'success', 'size': '23'}],
      \     'progress': [{'precent': '0'}],
      \     'button': [{'size': 'default'}],
      \     'checkbox-group': [{'bindchange': ''}],
      \     'checkbox': [{'value': '', 'checked': ''}],
      \     'form': [{'bindsubmit': ''}],
      \     'input': [{'type': 'text'}],
      \     'label': [{'for': ''}],
      \     'picker': [{'bindchange': ''}],
      \     'radio-group': [{'bindchange': ''}],
      \     'radio': [{'checked': ''}],
      \     'switch': [{'checked': ''}],
      \     'slider': [{'value': ''}],
      \     'action-sheet': [{'bindchange': ''}],
      \     'modal': [{'title': ''}],
      \     'loading': [{'bindchange': ''}],
      \     'toast': [{'duration': '1500'}],
      \     'audio': [{'src': ''}],
      \     'video': [{'src': ''}],
      \     'image': [{'src': '', 'mode': 'scaleToFill'}],
      \   }
      \ }
    \ }
" }

" mileszs/ack.vim {
  if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
    " let g:ackprg = 'ag --vimgrep'
  endif

  cnoreabbrev Ack Ack!
  nnoremap <Leader>a :Ack!<Space>
" }

" heavernshel/vim-jsdoc {
  nmap <silent> <C-L> :JsDoc<CR>

  let g:jsdoc_enable_es6 = 1
  let g:jsdoc_allow_input_prompt = 1
" }

" editorconfig/editorconfig-vim {
  " Excluded patterns
  " To ensure that this plugin works well with Tim Pope's fugitive(tpope/vim-fugitve), use the following patterns array:
  " let g:EditorConfig_exclude_patterns = ['fugitive://.*']
  " If you wanted to avoid loading EditorConfig for any remote files over ssh:
  " let g:EditorConfig_exclude_patterns = ['scp://.*']
  " Of course these two items could be combined into the following:
  let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
  " Disable rules
  " You might want to override some project-specific EditorConfig rules in global or local vimrc in some cases,
  " e.g., to resolve conflicts of trailing whitespace trimming and buffer autosaving.
  let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']
  " Exec Path
  " The file path to the EditorConfig core executable. You could set this value in your |vimrc| like this:
  " let g:EditorConfig_exec_path = 'Path to your EditorConfig Core executable'
" }

" ###############################
" 主题. 状态栏
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" vim-airline-themes
let g:airline_theme='solarized'
" Turns the outer-most section of the statusline Solarized green, making it
" look more like classic powerline in normal mode.
let g:airline_solarized_normal_green = 1
" Turns the text color of the outer-most sections of the statusline to be dark.
let g:airline_solarized_dark_text = 1
" Changes inactive window panes to have a dark bottom border instead
" of light by default
let g:airline_solarized_dark_inactive_border = 1

let g:airline_exclude_preview = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_statusline_ontop=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = '│'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
let g:airline_symbols.notexists = ' '
let g:airline_symbols.whitespace = 'Ξ'
" let g:airline_left_sep = '▶'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
" let g:airline_right_sep = '◀'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_powerline_fonts = 1
" 修改文件： ~/.vim/bundle/vim-airline/autoload/airline.vim 中的下面的函数
"     可以在状态栏显示时间
" function! airline#statusline(winnr)
"   if has_key(s:contexts, a:winnr)
"    " return '%{airline#check_mode('.a:winnr.')}'.s:contexts[a:winnr].line
"     return '%{airline#check_mode('.a:winnr.')}'.s:contexts[a:winnr].line.'|'.strftime("%d %H:%M")
"   endif
"  " in rare circumstances this happens...see #276
"   return ''
" endfunction

" 状态栏布局
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'warning', 'error' ]
      \ ]
      " \ [ 'x', 'y', 'z', 'warning', 'error' ]
" %B:ANSII码，%l:行号, %c:列号, %P:当前文件的百分比行, filetype:文件类型
let g:airline_section_x = airline#section#create_right([' %B│ %lL:%cC│ %p%%│ ', 'filetype'])

" let g:airline#extensions#taboo#enabled = 0
" let g:airline#extensions#bufferline#enabled = 1
" let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
" let g:airline#extensions#hunks#enabled = 1
" let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 1
let b:airline_whitespace_checks = [ 'indent', 'trailing' ]
" let b:airline_whitespace_checks = [ 'trailing' ]
" Always show the status line - use 2 lines for the status bar
set laststatus=2

" ###########################################
" custom vim options
" ###########################################
language en_US.UTF-8
set background=dark
colorscheme solarized

syntax enable
set diffopt=vertical
set clipboard=unnamed " 'yank' and paste using y and p from system clipboard
set synmaxcol=400 " prevent slow when a line is too long
set hidden
set cursorline
set showcmd
set number
set history=700
set ai "Auto indent
set wrap "Wrap lines
set autoread
set helplang=cn
set wildignore=*.o,*~,*.pyc,*.so,*.swp
set ruler
set showmatch
set cmdheight=1
set ignorecase
set hlsearch
set incsearch
set expandtab " on pressing tab, insert 2 space
set smarttab
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set tabstop=2 " show exiting tab with 2 spaces width
set nobackup " Files, backups and undo
set nowritebackup
set noswapfile
" Linebreak on 500 characters
" set lbr
set tw=500 " textwidth
" Disable error sounds and screen flashing
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500 " timeoutlen
set fileencodings=utf-8,gbk,big5
" set colorcolumn=101
" highlight colorcolumn ctermbg=red ctermfg=white

au BufEnter *.js,*.html,*.scss,*.less,*.tpl,*.vue match ExtraWhitespace /\s\+$/
hi ExtraWhitespace ctermbg=red guibg=red

" folder
nn zt zfat
nn z[ :sil! normal $zfa{<cr>
" set fdm=syntax
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,@-@

nnoremap <F5> :buffers<CR>:buffer<Space>

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

hi MatchParen cterm=none ctermbg=green ctermfg=white

" wechat wxml/wxss
" bug：每次发生BufEnter时，都会给filetype追加.html 或 .css
" au BufEnter *.wxml exe ":set ft+=.html"
" au BufEnter *.wxss exe ":set ft+=.css"

" au BufEnter *.js,*.html,*.scss exe ":set ff=unix"

au BufEnter *.js,*.html,*.scss,*.less 
    \ if &fileencoding != 'utf-8' | echo 'Warn: encoding is '.&fileencoding .', not utf-8' | endif

" Return to last edit position when opening files 
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" diff change
fun! s:DiffChange()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfun
com! DiffChange call s:DiffChange()

" toggle line number
nn <silent> <f6> :if &number \| set nonumber \| else \| set number \| endif<cr>

" use ctrlp to search file under the cursor
fun! GoFile()
    let line = getline('.')
    let start = col('.') - 1
    let chars = '[[:alnum:]-_./\\]\+'
    while start >= 0 && match(line[start], chars) >= 0
        let start -= 1
    endwhile
    let str = matchstr(line, chars, start)
    let str = substitute(substitute(str, '^\.\+', '', ''), '^[\\/]', '', '')
    if str != ''
        let g:ctrlp_lazy_update = 10
        CtrlP
        exe 'normal '.substitute(str, '[\-]', '', 'g')
        let g:ctrlp_lazy_update = 0
    endif
endfun
au BufEnter *.js,*.html,*.scss,*.less,*.tpl nn <buffer> gp :call GoFile()<cr>
au BufNewFile,BufRead *.tpl,*.html set ft+=.jinja
au BufNewFile,BufRead *.axml set ft+=.html

" 文件头注释
au BufNewFile *.js* exec ":call SetComment()"
map <F4> :call SetComment()<cr>

func SetComment()
  let l:ln = 0
  call append(0,  "/**")
  call append(1,  " * =============================================================================")
  call append(2,  " * =============================================================================")
  call append(3,  " * @fileoverview 文件概述") 
  call append(4,  " * @copyright  八戒财税 版权所有")
  call append(5,  " * @author leiyaoqiang <leiyaoqiang@zbj.com>")
  call append(6,  " * create on ".strftime("%Y/%m/%d"))
  call append(7,  " * =============================================================================")
  call append(8,  " * =============================================================================")
  call append(9,  " */")
  call append(10, "")
  call append(11, "'use strict'")
  call append(12, "")
endfunc
