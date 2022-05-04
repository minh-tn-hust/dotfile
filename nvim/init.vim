" Config cơ bản của vim với vimscript
set hls
set is
set clipboard=unnamedplus
set gfn=Fixedsys:h10
set ts=2
set sw=2
set si
set noswapfile
set nowrap
set relativenumber
set nobackup
set nowritebackup
set nu
set updatetime=100
set encoding=UTF-8

" Config đếm dòng theo số dần nhấn j k
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set rnu
	autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

" Highlight dòng hiện tại 
set cursorline
hi CursorLine   cterm=underline
hi CursorColumn cterm=underline

" Nhấn Space để thực hiện các câu lệnh đã được record
nnoremap <Space> @q


runtime ./plug.vim
colorscheme gruvbox

"Config dành cho C++ 
autocmd BufNewFile  *.cpp 0r ~/Documents/C++/.template/skeleton.cpp
