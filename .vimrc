"
" ############################################################################
" Project: dotfiles (none)
" File...: .vimrc
" Created: Sunday, 2020/09/20 - 00:44:39
" Author.: @fbnmtz, (fabiano.matoz@gmail.com)
" ~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~·~·~·~·~·~·~·~~·~·~·~·~·~~·~·~·~·~·~·~·~
" Last Modified: Sunday, 2020/09/20 - 00:59:02
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
