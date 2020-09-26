"
" ############################################################################
" Project: dotfiles (none)
" File...: .vimrc
" Created: Sunday, 2020/09/20 - 00:44:39
" Author.: @fbnmtz, (fabiano.matoz@gmail.com)
" ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
" Last Modified: Sunday, 2020/09/20 - 01:01:10
" Modified By..: @fbnmtz, (fabiano.matoz@gmail.com)
" ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
" Version: 0.0.1.1
" ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
" Description: 
"  >
" ############################################################################
" HISTORY:
"

" ###################################################################
" vim usage
" ###################################################################
" n  Normal mode map. Defined using ':nmap' or ':nmap'.
" i  Insert mode map. Defined using ':imap' or ':inoremap'.
" v  Visual and select mode map. Defined using ':vmap' or ':vnoremap'.
" x  Visual mode map. Defined using ':xmap' or ':xnoremap'.
" s  Select mode map. Defined using ':smap' or ':snoremap'.
" c  Command-line mode map. Defined using ':cmap' or ':cnoremap'.
" o  Operator pending mode map. Defined using ':omap' or ':onoremap'.

" :map,  :noremap,  :unmap	Normal, Visual and Operator-pending mode
" :map!, :noremap!, :unmap!	Insert and Command-line mode
" :nmap, :nnoremap, :nunmap	Normal mode
" :imap, :inoremap, :iunmap	Insert and Replace mode
" :vmap, :vnoremap, :vunmap	Visual and Select mode
" :xmap, :xnoremap, :xunmap	Visual mode
" :smap, :snoremap, :sunmap	Select mode
" :cmap, :cnoremap, :cunmap	Command-line mode
" :omap, :onoremap, :ounmap	Operator pending mode

" ###################################################################
" Plugin Manager
" ###################################################################

" using plugin system 'plug'
" Add plugs and call in editor :PlugInstall
" Specify a directory for plugin
call plug#begin('~/.vim/plugged')

" install this plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"vim status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" colors plugin
" Plug 'morhetz/gruvbox'
Plug 'ParamagicDev/vim-medic_chalk'

" ranger explorer to vim
Plug 'iberianpig/ranger-explorer.vim'


" render minimap preview off text
" Plug 'severin-lemaignan/vim-minimap' 
Plug 'wfxr/minimap.vim'

" show commit info (popup)
Plug 'rhysd/git-messenger.vim'

" multiple cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Initialize plugin system
call plug#end()


" ###################################################################
" run some plugins commands
" ###################################################################

" active status bar plugin
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" severin-lemaignan minimap preview config
" let g:minimap_show='<leader>ms'
" let g:minimap_update='<leader>mu'
" let g:minimap_close='<leader>gc'
" let g:minimap_toggle='<leader>gt'
" set :Minimap

" 'wfxr/minimap.vim' minimap config
let g:minimap_auto_start = 1
" hi MinimapCurrentLine ctermfg=Green guifg=#50FA7B guibg=#32302f
" let g:minimap_highlight = 'MinimapCurrentLine'


" active ctrl p (like vscode)
set runtimepath^=~/.vim/autoload/ctrlp.vim

" spell check (spell file in =$HOME/.vim/spell/pt.utf-8.spl)
set spell spelllang=pt
" set nospell

" ###################################################################
" set default vim opetions
" ###################################################################

"set tabstop=3
set expandtab shiftwidth=3 softtabstop=3

" code highlight
syntax on

" line highlighting
:set cursorline

" colors
colorscheme medic_chalk
" colorscheme gruvbox

set number relativenumber
filetype plugin on

let mapleader = ","

" ###################################################################
" My Keys - custom mapping
" ###################################################################

" save file
nmap <F2>  <ESC>:w<CR> 
nmap <C-s> <ESC>:w<CR>
nmap <S-s> <ESC>:w<space>
nmap <c-s> :w<CR>
imap <c-s> <c-o>:w<CR>

" save and exit
map <C-x> <ESC>:x<CR>

" quit all tabs without saving
map <C-q> <ESC>:qa!<CR>

" undo (ctrl z)
" map <C-z> <ESC> u
imap <c-z> <c-o>:u<CR>
" map <C-S-z> 

" copy
" Enable Ctrl+C for copying selected text in Visual mode
vmap <c-c> <c-o>:y<CR>
imap <c-v> <c-i>:p<CR>


" verificacao ortografica
map <F8> :set spell spelllang=pt<CR>
map <F9> :set nospell<CR>

" Ctrl+{t,w,i,tab} -> tab shortcuts (new, close, next, prev)
map  <C-t>   :tabedit<CR>
map  <C-w>   <ESC>:q!<CR>
nmap <C-i>   :tabnext<CR>
nmap <S-tab> :tabprev<CR>

" Shift+p -> center in command mode (normode)
nmap <S-p> :<space>

" ESC/cancel alias
imap jj <ESC>

" splits
nmap sv  <ESC> :split<CR>
nmap sh  <ESC> :vsplit<CR>
nmap rv+ <ESC> :vertical resize +5<CR>
nmap rv- <ESC> :vertical resize -5<CR>
nmap rh+ <ESC> :horizontal resize +5<CR>
nmap rh- <ESC> :horizontal resize -5<CR>
nmap <S-Up>    :wincmd k<CR>
nmap <S-Down>  :wincmd j<CR>
nmap <S-Left>  :wincmd h<CR>
nmap <S-Right> :wincmd l<CR>
" map <leader>q <C-w>H

" list buffers
map  <F3> :ls<CR>

map ; :
" ###################################################################
" nerdtree options
" ###################################################################

" open sidebar (nerdTree)
nmap <C-b> :NERDTreeToggle<CR>
vmap ++    <plug>NERDCommenterToggle
nmap ++    <plug>NERDCommenterToggle

" open NERDTree automatically
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }                         

"###################################################################
" autocmd - header file
"###################################################################

autocmd bufnewfile *.* so /home/$USER/.vim/vheader.txt
autocmd bufnewfile *.* exe "1," . 3 . "g/File....:.*/s//File....: " .expand("%")
autocmd bufnewfile *.* exe "1," . 6 . "g/Project.:.*/s//Project.: " .expand("%:p:h:t")
autocmd bufnewfile *.* exe "1," . 6 . "g/Created.:.*/s//Created.: " .strftime("%A, %Y.%m.%d-%H:%M:%S")
autocmd bufnewfile *.* exe "1," . 9 . "g/Author..:.*/s//Author..: " ."bkn"
autocmd Bufwritepre,filewritepre *.* execute "normal ma"
autocmd Bufwritepre,filewritepre *.* exe "1," . 10 . "g/Last Modified.:.*/s/Last Modified.:.*/Last Modified.: " .strftime("%A, %Y.%m.%d-%H:%M:%S")
autocmd Bufwritepre *.* exe "1," . 9 . "g/Modified By...:.*/s//Modified By...: " ."bkn"
autocmd bufwritepost,filewritepost *.* execute "normal `a"


" ranger explorer in vim
nmap <silent><Leader>n :RangerOpenCurrentFile<CR>
nmap <silent><Leader>c :RangerOpenCurrentDir<CR>
nmap <silent><Leader>f :RangerOpenProjectRootDir<CR>

" multiple cursor - Change shortcut form ctrl+n to ctrl+d
nmap <C-d> <C-n>