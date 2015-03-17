"""""""""""""""
" My settings "
"""""""""""""""

syntax on

" toggle line numbers
set number
map <F10> :set invnumber<CR>
map! <F10> <Esc>:set invnumber<CR>a

set cursorline
hi CursorLine cterm=underline
map <F9> :set invcursorline<CR>
map! <F9> :set invcursorline<CR>a


" highlight search
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" ignorecase during search
set ic

" filetypes
filetype plugin on
filetype indent on

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Ruby
map \er <Esc>:w<CR>:!ruby %<CR>
map! \er <Esc>:w<CR>:!ruby %<CR>
iab rsh! #!/usr/bin/env ruby

" Perl
map \cp <Esc>:w<CR>:!perl -c %<CR>
map! \cp <Esc>:w<CR>:!perl -c %<CR>
iab psh! #!/usr/bin/env perl

" Execute (shebang)
map \ep <Esc>:w<CR>:!perl %<CR>
map! \ep <Esc>:w<CR>:!perl %<CR>


" highlight spaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
nnoremap \wn :match ExtraWhitespace /\s\+$/<CR>
nnoremap \wf :match<CR>


" change to normal mode
map \ei <Esc>
map! \ei <Esc>
map <C-l> <Esc>
map! <C-l> <Esc>
map <A-l> <Esc>
map! <A-l> <Esc>
map ;; <Esc>
map! ;; <Esc>

" save
map \ss <Esc>:w<CR>
map! \ss <Esc>:w<CR>

" save and quit
map \sq <Esc>:wq<CR>
map! \sq <Esc>:wq<CR>

" don't save and quit
map \qq <Esc>:q!<CR>
map! \qq <Esc>:q!<CR>


" run 'make'
map \mk <Esc>:w<CR>:!make<CR>
map! \mk <Esc>:w<CR>:!make<CR>


" run 'make' and execute a.out
map \me <Esc>:w<CR>:!make<CR>:!./a.out<CR>
map! \me <Esc>:w<CR>:!make<CR>:!./a.out<CR>


" repeat last command
map \rp <Esc>@:
map! \rp <Esc>@:

" save file under root
map \sudo <Esc>:w !sudo tee > /dev/null %<CR>
map! \sudo <Esc>:w !sudo tee > /dev/null %<CR>

" PASTE mode
set pastetoggle=<F2>

" compile and execute C
map \gcc <Esc>:w<CR>:!gcc %<CR>:!./a.out<CR>
map! \gcc <Esc>:w<CR>:!gcc %<CR>:!./a.out<CR>

" compile and execute C++
map \gpp <Esc>:w<CR>:!g++ %<CR>:!./a.out<CR>
map! \gpp <Esc>:w<CR>:!g++ %<CR>:!./a.out<CR>

" some aliases
command W w
command Q q
command Wq wq
command WQ wq

" highlight current line
set t_Co=256
color desert
set cursorline 
hi CursorLine cterm=underline 

set tabstop=2
set shiftwidth=2
set expandtab

" C++ specific
au FileType cpp,c source ~/.vim/c_auto.vim

" Vundle config
source ~/.vim/vundle_vimrc.vim

" Highlight Ctrl-P autocompletion menu
highlight Pmenu ctermbg=18   

" ctags support (look for 'tags' file in all the parent dirs)
set tags=./tags;$HOME

" backspace behaviour
set backspace=indent,eol,start

" ~/.vimrc ends here
