let g:pathogen_disabled = ['syntastic']
execute pathogen#infect()

set number
set hlsearch
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
set titlestring=%F\ %a%r%m
let titlelen=70
set title
set backspace=indent,eol,start
set autoindent
set diffopt+=vertical
highlight LineNr ctermfg=grey

"" Splits
"" set splitbelow
"" set splitright

set ignorecase
syntax on

"" autocmd BufRead,BufNewFile * setlocal signcolumn=auto

let mapleader = " "

nnoremap <Leader>s :SyntasticReset<CR>
nnoremap <Leader>p :set paste!<CR>
nnoremap <Leader>pp :Prettier<CR>
nnoremap <Leader>n :set nonumber!<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>ct :CommandT<CR>

"" disable arrow keys
""noremap  <Up> ""
""noremap! <Up> <Esc>
""noremap  <Down> ""
""noremap! <Down> <Esc>
""noremap  <Left> ""
""noremap! <Left> <Esc>
""noremap  <Right> ""
""noremap! <Right> <Esc>

"" splits
nnoremap <Leader>vs :vsplit<CR>

so ~/.vim/scripts/closetag.vim

set statusline+="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

let g:ale_pattern_options = {'\.py$': {'ale_enabled': 0}}

"" let g:ale_set_highlights = 0
"" let g:ale_change_sign_column_color = 0
"" let g:ale_sign_column_always = 1
"" let g:ale_sign_error = '✖'
"" let g:ale_sign_warning = '⚠'
"" let g:ale_echo_msg_error_str = '✖'
"" let g:ale_echo_msg_warning_str = '⚠'
"" let g:ale_open_list = 1
"" let g:ale_echo_msg_format = '%severity% %s% [%linter%% code%]'
"" let g:ale_completion_enabled = 1
"" let g:user_emmet_settings = {
"" \  'javascript' : {
"" \      'extends' : 'jsx',
"" \  },
"" \}

"" let g:ale_linters = {
"" \   'javascript': ['eslint'],
"" \   'typescript': ['tsserver', 'tslint']
"" \}

"" let g:ale_fixers = {
"" \    'javascript': ['eslint'],
"" \    'typescript': ['prettier'],
"" \    'vue': ['eslint'],
"" \    'scss': ['prettier'],
"" \    'html': ['prettier']
"" \}

"" let g:ale_fix_on_save = 1
"" let g:ale_sign_warning = '.'
"" let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
set rtp+=/usr/local/opt/fzf

"" set max line-length to 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 80)

"" python
set shiftwidth=4
set tabstop=4
set softtabstop=4

let python_highlight_all = 1
