" NeoBundleの設定
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  " originalrepos on github
  NeoBundle 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/vimproc'
  NeoBundle 'VimClojure'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/neomru.vim'
  NeoBundle 'Shougo/neocomplcache'
  NeoBundle 'jpalardy/vim-slime'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'tpope/vim-rails'
  NeoBundle 'tpope/vim-endwise'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'vim-scripts/AnsiEsc.vim'
  NeoBundle 'mattn/emmet-vim'
  call neobundle#end()
endif

filetype plugin indent on
syntax on
NeoBundleCheck

" スワップファイルを作らない
set noswapfile
" バックアップファイルを作成しない
set nobackup
" undoファイル(un~)を作らない
set noundofile
" 全ての数を10進数として扱う
set nrformats=
" 行番号を表示する
set number
" ビジュアルモードで選択したテキストがクリップボードに入る
"set guioptions+=a
" カラースキーマ
colorscheme desert
" 新しい行のインデントを現在行と同じにする。
set autoindent
" クリップボードをWindowsと連携
set clipboard=unnamed,autoselect
" タブの代わりに空白文字を挿入する
set expandtab
" タブを空白文字2つに変換
set ts=2
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" インクリメンタルサーチを行う
set incsearch
" タブ文字など不可視文字を表示する
set list
" listで表示される文字のフォーマットを指定する
set listchars=tab:>-,extends:<,trail:-
" タブの代わりに空白文字を挿入する
set expandtab
" シフト移動幅
set shiftwidth=2
" ファイル内のtabが対応する空白の数
set tabstop=2
" 閉じ括弧が入力された時、対応する括弧を表示する
set showmatch
" 検索時に大文字、小文字を区別しない
set ignorecase
" 検索時に大文字を含んでいたら、大小を区別
set smartcase
" 検索をファイルの先頭へループしない
set nowrapscan
" GUI版でない場合は、こちらの設定を追加する。
" set clipboard+=autoselect
" カラースキーマの背景色(またはlight)
set background=dark
" gvimをタブエディタ化する。（タブページのラベルを常に表示）
set showtabline=2
" ESC連打でハイライトの色を消す
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" コマンドライン補完する時に補完候補を表示する
set wildmenu
" ウィンドウのタイトルバーにファイルのパス情報等を表示する
set title
" ビープ音を全て無効化する
set visualbell t_vb=
" エラーメッセージの表示時にビープ音を鳴らさない
set noerrorbells
" スワップファイルは使わない
set noswapfile
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
""""""""""""""""""""
" Unite.vimの設定
""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite$do_action('vsplit')
" ESCを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""
" fugitive.vimの設定
""""""""""""""""""""
" Gitを便利に使う
" autocmd QuickFixCmdPost *grep* cwindow
" ステータス行に現在のgitブランチを表示する
" set statusline+=%{fugitive#statusline()}
""""""""""""""""""""
" vim-indent-guides.vimの設定
""""""""""""""""""""
" vimを立ち上げた時に、自動的にオンにする
let g:indent_guides_enable_on_vim_startup = 1
""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""
if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif
""""""""""""""""""""
" NERDTreeの設定
""""""""""""""""""""
" Ctrl+eで開く
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
"デフォルトでツリーを表示させる
autocmd VimEnter * execute 'NERDTree'
"タブ移動
map <C-l> gt
map <C-h> gT
""""""""""""""""""""
" バッファを移動するためのキーマッピング
""""""""""""""""""""
" 前のバッファ
nnoremap <silent> [b :bprevious<CR>
" 次のバッファ
nnoremap <silent> ]b :bnext<CR>
" 最初のバッファ
nnoremap <silent> [B :bfirst<CR>
" 最後のバッファ
nnoremap <silent> ]B :blast<CR>
""""""""""""""""""""
" emmet-vim
""""""""""""""""""""
" langをenをjaに設定する
let g:user_emmet_settings = {
\ 'variables': {
\ 'lang' : 'ja'
\ }
\}
