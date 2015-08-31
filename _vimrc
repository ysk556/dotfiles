" NeoBundle�̐ݒ�
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

" �X���b�v�t�@�C�������Ȃ�
set noswapfile
" �o�b�N�A�b�v�t�@�C�����쐬���Ȃ�
set nobackup
" undo�t�@�C��(un~)�����Ȃ�
set noundofile
" �S�Ă̐���10�i���Ƃ��Ĉ���
set nrformats=
" �s�ԍ���\������
set number
" �r�W���A�����[�h�őI�������e�L�X�g���N���b�v�{�[�h�ɓ���
"set guioptions+=a
" �J���[�X�L�[�}
colorscheme desert
" �V�����s�̃C���f���g�����ݍs�Ɠ����ɂ���B
set autoindent
" �N���b�v�{�[�h��Windows�ƘA�g
set clipboard=unnamed,autoselect
" �^�u�̑���ɋ󔒕�����}������
set expandtab
" �^�u���󔒕���2�ɕϊ�
set ts=2
" �ύX���̃t�@�C���ł��A�ۑ����Ȃ��ő��̃t�@�C����\��
set hidden
" �C���N�������^���T�[�`���s��
set incsearch
" �^�u�����ȂǕs��������\������
set list
" list�ŕ\������镶���̃t�H�[�}�b�g���w�肷��
set listchars=tab:>-,extends:<,trail:-
" �^�u�̑���ɋ󔒕�����}������
set expandtab
" �V�t�g�ړ���
set shiftwidth=2
" �t�@�C������tab���Ή�����󔒂̐�
set tabstop=2
" �����ʂ����͂��ꂽ���A�Ή����銇�ʂ�\������
set showmatch
" �������ɑ啶���A����������ʂ��Ȃ�
set ignorecase
" �������ɑ啶�����܂�ł�����A�召�����
set smartcase
" �������t�@�C���̐擪�փ��[�v���Ȃ�
set nowrapscan
" GUI�łłȂ��ꍇ�́A������̐ݒ��ǉ�����B
" set clipboard+=autoselect
" �J���[�X�L�[�}�̔w�i�F(�܂���light)
set background=dark
" gvim���^�u�G�f�B�^������B�i�^�u�y�[�W�̃��x������ɕ\���j
set showtabline=2
" ESC�A�łŃn�C���C�g�̐F������
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" �R�}���h���C���⊮���鎞�ɕ⊮����\������
set wildmenu
" �E�B���h�E�̃^�C�g���o�[�Ƀt�@�C���̃p�X��񓙂�\������
set title
" �r�[�v����S�Ė���������
set visualbell t_vb=
" �G���[���b�Z�[�W�̕\�����Ƀr�[�v����炳�Ȃ�
set noerrorbells
" �X���b�v�t�@�C���͎g��Ȃ�
set noswapfile
" �J�[�\�������s�ڂ̉���ڂɒu����Ă��邩��\������
set ruler
""""""""""""""""""""
" Unite.vim�̐ݒ�
""""""""""""""""""""
" ���̓��[�h�ŊJ�n����
let g:unite_enable_start_insert=1
" �o�b�t�@�ꗗ
noremap <C-P> :Unite buffer<CR>
" �t�@�C���ꗗ
noremap <C-N> :Unite -buffer-name=file file<CR>
" �ŋߎg�����t�@�C���̈ꗗ
noremap <C-Z> :Unite file_mru<CR>
" sources���u���J���Ă���t�@�C���̃f�B���N�g���v�Ƃ���
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" �E�B���h�E�𕪊����ĊJ��
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" �E�B���h�E���c�ɕ������ĊJ��
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite$do_action('vsplit')
" ESC��2�񉟂��ƏI������
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""
" fugitive.vim�̐ݒ�
""""""""""""""""""""
" Git��֗��Ɏg��
" autocmd QuickFixCmdPost *grep* cwindow
" �X�e�[�^�X�s�Ɍ��݂�git�u�����`��\������
" set statusline+=%{fugitive#statusline()}
""""""""""""""""""""
" vim-indent-guides.vim�̐ݒ�
""""""""""""""""""""
" vim�𗧂��グ�����ɁA�����I�ɃI���ɂ���
let g:indent_guides_enable_on_vim_startup = 1
""""""""""""""""""""
" �����I�ɕ����ʂ����
""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""
" �Ō�̃J�[�\���ʒu�𕜌�����
""""""""""""""""""""
if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif
""""""""""""""""""""
" NERDTree�̐ݒ�
""""""""""""""""""""
" Ctrl+e�ŊJ��
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" �B���t�@�C�����f�t�H���g�ŕ\��������
let NERDTreeShowHidden = 1
"�f�t�H���g�Ńc���[��\��������
autocmd VimEnter * execute 'NERDTree'
"�^�u�ړ�
map <C-l> gt
map <C-h> gT
""""""""""""""""""""
" �o�b�t�@���ړ����邽�߂̃L�[�}�b�s���O
""""""""""""""""""""
" �O�̃o�b�t�@
nnoremap <silent> [b :bprevious<CR>
" ���̃o�b�t�@
nnoremap <silent> ]b :bnext<CR>
" �ŏ��̃o�b�t�@
nnoremap <silent> [B :bfirst<CR>
" �Ō�̃o�b�t�@
nnoremap <silent> ]B :blast<CR>
""""""""""""""""""""
" emmet-vim
""""""""""""""""""""
" lang��en��ja�ɐݒ肷��
let g:user_emmet_settings = {
\ 'variables': {
\ 'lang' : 'ja'
\ }
\}
