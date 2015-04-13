set autoindent
set backspace=indent,eol,start
set incsearch       " Incremental search
set laststatus=2    " Always show status line
set relativenumber
set numberwidth=5
set ruler
set showcmd
set smartcase       " Case insensitive searches become sensitive with capitals"
" set splitbelow      " Split windows at bottom"
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%{SL('CapsLockStatusline')}%y%{SL('fugitive#statusline')}%#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %Pset statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set visualbell
set virtualedit=block
set wildmenu
set wildmode=list:longest,full
set wildignore+=*~,*.aux,tags
set cursorline
set timeoutlen=2000 ttimeoutlen=0

set wrap linebreak nolist showbreak=…  " soft wrap text nicely

" Switch syntax highlighting on
syntax on

" leader
let mapleader = "\<Space>"
let maplocalleader = "\\"

" set up some custom colors
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236 cterm=bold
highlight StatusLineNC ctermbg=12  ctermfg=0
highlight StatusLine   ctermbg=235 ctermfg=12
highlight IncSearch    ctermbg=0   ctermfg=3
highlight Search       ctermbg=0   ctermfg=9
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=235 ctermfg=12
highlight PmenuSel     ctermbg=0   ctermfg=3
highlight SpellBad     ctermbg=0   ctermfg=1

" highlight the status bar when in insert mode
if version >= 700
  " green in insert mode
  au InsertEnter * hi StatusLine ctermbg=235 ctermfg=2
  " blue in normal/visual mode
  au InsertLeave * hi StatusLine ctermbg=235 ctermfg=12
endif