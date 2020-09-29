""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins (based on danijar/dotfiles)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" This is meant to autoinstall the plugin manager if missing
" didn't seem to work on first try, installed with curl instead
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Tools.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-eunuch'
"Plug 'tpope/vim-fugitive'
"Plug 'christoomey/vim-conflicted'
"Plug 'vim-scripts/loremipsum'

" Editing.
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'nelstrom/vim-visual-star-search'
"Plug 'chaoren/vim-wordmotion'
Plug 'reedes/vim-pencil'
"Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'

" Codel intel.
Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-jedi'
" Plug 'davidhalter/jedi-vim'
Plug 'w0rp/ale'

" Languages
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'lervag/vimtex'
" Plug 'edliaw/vim-python'

" Visuals.
Plug 'morhetz/gruvbox'
Plug 'jnurmine/Zenburn'
Plug 'easysid/mod8.vim'
Plug 'w0ng/vim-hybrid'
Plug 'ap/vim-css-color'

" Behavior.
" Plug 'amerlyq/vim-focus-autocmd'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings (based on danijar/dotfiles)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" davidhalter/jedi-vim
" let g:jedi#completions_enabled = 0
" let g:jedi#force_py_version = 3
" let g:jedi#use_tabs_not_buffers = 1

" w0rp/ale
let g:ale_linters = {'python': ['flake8']}
let g:ale_python_flake8_options = '--ignore=F403,E402,E111,E114,E302,E306,E125,E731,W504,E305'
let g:ale_python_pylint_optoins = "--indent-string '  '"
let b:ale_fixers = ['isort']
let g:ale_pattern_options = {
\ '/google/src/.*': {'ale_enabled': 0},
\}

" ctrlp.vim
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_user_command = {'types': {
\ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
\ }, 'fallback': 'find %s -type f'}

" SirVer/ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/snippet']
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

" tpope/vim-commentary
" xmap < <Plug>Commentary
" nmap < <Plug>Commentary
" omap < <Plug>Commentary

" plasticboy/vim-markdown
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_conceal = 0

" morhetz/gruvbox
let g:gruvbox_termcolors = 16
let g:gruvbox_underline = 0
let g:gruvbox_undercurl = 0
let g:gruvbox_italic = 1

" w0ng/vim-hybrid
let g:hybrid_custom_term_colors = 1

" Yggdroot/indentLine
let g:indentLine_setConceal = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sample/quickstart veonim config 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists('veonim')

" built-in plugin manager
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'

" extensions for web dev
let g:vscode_extensions = [
  \'vscode.typescript-language-features',
  \'vscode.css-language-features',
  \'vscode.html-language-features',
\]

" multiple nvim instances
nno <silent> <c-t>c :Veonim vim-create<cr>
nno <silent> <c-g> :Veonim vim-switch<cr>
nno <silent> <c-t>, :Veonim vim-rename<cr>

" workspace functions
nno <silent> ,f :Veonim files<cr>
nno <silent> ,e :Veonim explorer<cr>
nno <silent> ,b :Veonim buffers<cr>
nno <silent> ,d :Veonim change-dir<cr>
"or with a starting dir: nno <silent> ,d :Veonim change-dir ~/proj<cr>

" searching text
nno <silent> <space>fw :Veonim grep-word<cr>
vno <silent> <space>fw :Veonim grep-selection<cr>
nno <silent> <space>fa :Veonim grep<cr>
nno <silent> <space>ff :Veonim grep-resume<cr>
nno <silent> <space>fb :Veonim buffer-search<cr>

" language features
nno <silent> sr :Veonim rename<cr>
nno <silent> sd :Veonim definition<cr>
nno <silent> si :Veonim implementation<cr>
nno <silent> st :Veonim type-definition<cr>
nno <silent> sf :Veonim references<cr>
nno <silent> sh :Veonim hover<cr>
nno <silent> sl :Veonim symbols<cr>
nno <silent> so :Veonim workspace-symbols<cr>
nno <silent> sq :Veonim code-action<cr>
nno <silent> sk :Veonim highlight<cr>
nno <silent> sK :Veonim highlight-clear<cr>
nno <silent> ,n :Veonim next-usage<cr>
nno <silent> ,p :Veonim prev-usage<cr>
nno <silent> sp :Veonim show-problem<cr>
nno <silent> <c-n> :Veonim next-problem<cr>
nno <silent> <c-p> :Veonim prev-problem<cr>

endif
