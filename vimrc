"use pathogen to manage plugins
execute pathogen#infect()

colorscheme blackboard

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"high light column 80
:set colorcolumn=80

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Avoid mapping conflict with \t
nnoremap <leader>v <Plug>TaskList
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" set tab stop, soft tab stop, shift width and replace tabs with spaces
set ts=2 sts=2 sw=2 expandtab

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on
   
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
   
endif

" draw a vertical line at 80 columns
set colorcolumn=80

" font settings
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
