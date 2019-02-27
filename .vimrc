autocmd BufEnter * set mouse=
syntax on
""""""""""""""" MORE RANDOM STUFF """""""""""""""""

" Return to last edit position when opening files
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "normal! g`\"" |
	\ endif
" Remember info about open buffers on close
	set viminfo^=%

"Replace selected text by something else. Select, then enter C-r then type the replacing text.
	vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

"Save using \s
	noremap <Leader>s :update<CR>

"Single character insertion
	nmap <Space> i_<Esc>r

" Smart way to move between windows
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l
	map <C-p> <C-W>p
	map <C-\> <C-W>\

" The number of spaces a tab is. the following two lines must be present for > to work properly
	set tabstop=4
	set shiftwidth=4

" backspace that makes sense
	set backspace=indent,eol,start
	set whichwrap+=<,>,h,l

" Treat long lines as break lines (useful when moving around in them)
	map j gj
	map k gk

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
	func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
	endfunc
	autocmd BufWrite *.py :call DeleteTrailingWS()
