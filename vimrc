"-----
"License - http://www.apache.org/licenses/LICENSE-2.0.html
"
"Author Prahsant Sadashiv Khanwale, Credit belong to the internet
"Allow mouse integration - take this out for character only systems
"A lot of credit to the entire internet.
"Package management
execute pathogen#infect()
syntax enable

set mouse=a

"Enable all VIM featrures
set nocompatible

"Set mapping time out to 2 seconds, key time out to 6/10th of a second.
set timeout timeoutlen=2000 ttimeoutlen=600

"Remap window key to \w
noremap <leader>w <c-w>

syntax on
syntax enable


" No annoying sound on errors
set visualbell t_vb=
set tm=500

"Set numbers and relative numbers on
set nu
set relativenumber
"Keep last 50 search patterns
set history=50
"Show incomplete commands at bottom right
set showcmd
"Show ruler (curser position)"
set ruler
" Set to auto read when a file is changed from the outside
set autoread

set smartcase
" Solarized

"set background=light
"let g:solarized_termcolors = 256
"colorscheme solarized

"ctags
set tags=tags;/
noremap <leader>t <esc>:TagbarToggle<CR>
"Faster shortcut for commenting. Requires tComment Plugin
noremap <leader>c <c-_><c-_>

" http://stackoverflow.com/questions/1551231/highlight-variable-under-cursor-in-vim-like-in-netbeans
":autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

filetype plugin indent on

"Carry over the indent from previous line
set autoindent

:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
"Highlight search
set hlsearch
"Show incomplete search
set incsearch
"Ignore case when searching
set ignorecase
"Expand tab to space
set expandtab
"Tab is 2 spaces
set tabstop=2
"Indent is 2 spaces
set shiftwidth=2
"Soft tab stop is 2 spaces
set softtabstop=2
"Show ¬ at the end of line and ▸ for tabs
set listchars=tab:▸\ ,eol:¬
"The list the can cause a bit of a problem on some terminals."
set list

" NerdTree
map <leader>n :NERDTreeToggle<cr>
map <leader>r :NERDTreeFind<cr>
let NERDTreeIgnore = ['.*target.*','.*bin.*']

" Buffers - explore/next/previous: leader-u
nnoremap <silent> <leader>u :BufExplorer<CR>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

"Remap buffer delete to \q
noremap <leader>q <esc>:bd<CR>
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nnoremap <leader>T :enew<cr>

" Move to the next buffer
nnoremap <leader>l :bnext<CR>

" Move to the previous buffer
nnoremap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nnoremap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nnoremap <leader>bl :ls<CR>
"
" Replace word under cursor globally
nnoremap <Leader>a :%s/\<<C-r><C-w>\>/
" Search word under cursor
nnoremap <Leader>s :/\<<C-r><C-w>\><CR>

" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


"rainbow parantheses
nnoremap <c-9> <esc>:RainbowParenthesesToggleAll<CR>
"au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

  " unicode symbols
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_symbols.linenr = '↩'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✭",
    \ "Staged"    : "✚",
    \ "Untracked" : "⚑",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "⌁",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
\ }
"CtrlP setup
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"----
set background=light
colorscheme solarized
let g:Powerline_symbols = 'fancy'

"----- Airline --------------
let g:airline_powerline_fonts = 1
"----- Nerdtree --------------
"How can I open a NERDTree automatically when vim starts up?
" UNCOMMENT ^  autocmd StdinReadPre * let s:std_in=1
"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

