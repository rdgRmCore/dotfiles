"use pathogen to manage plugins
execute pathogen#infect()

colorscheme blackboard

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Avoid mapping conflict with \t
nnoremap <leader>v <Plug>TaskList
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" set tab stop, soft tab stop, shift width and replace tabs with spaces
set ts=4 sts=4 sw=4 expandtab

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on
   
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
   
endif
