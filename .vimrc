filetype plugin indent on
syntax enable

"better safe than sorry, ei mitään hajua mitä tämä tekee
set nocompatible
"alapalkki
set ruler
"komentorivitäydennys
set wildmenu
"hilight etsinnän tuloksille
set hlsearch
"haettaessa ei välitetä merkkikoosta
set ignorecase
"näytä aina alhaalla olevat osat
set laststatus=2
"rivinumerot
set number
set relativenumber
"Tabit spaceiksi
set expandtab
set tabstop=4
set shiftwidth=4

"ei käytetä swappia, ikävä esim. gittirepojen kanssa.
set nobackup
set nowb
set noswapfile
"mapataan ESC yhdistelmään CTRL+L
imap <C-L> <Esc>
