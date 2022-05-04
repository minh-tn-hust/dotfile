" Config cơ bản của NERDTree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Đóng toàn bộ khi chỉ còn lại một tab
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Mở một tab nếu như nó đã tồn tại trong buffer 
function NERDTreeMyOpenInTab(node)
	call a:node.open({'reuse': "all", 'where': 't'})
endfunction
autocmd VimEnter * :call NERDTreeAddKeyMap({'key': 't', 'callback': 'NERDTreeMyOpenInTab', 'scope': 'FileNode', 'override': 1 })
