if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
	" Plugin dành cho duyệt file
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

	" Plugin dành cho Language server
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Color scheme
	Plug 'morhetz/gruvbox'
	Plug 'dracula/vim'

	" Plugin dành cho tìm kiếm các từ có trong toàn bộ project
	Plug 'mileszs/ack.vim'
	Plug 'dyng/ctrlsf.vim'

	" Sử dụng để comment các dòng code
	Plug 'tpope/vim-commentary'

	" Sử dụng để tự động đóng các ngoặc
	Plug 'jiangmiao/auto-pairs'

	" Icon dành cho NERDTree
	Plug 'ryanoasis/vim-devicons'

	" Sử dụng để tìm kiếm file
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" Beautiful status bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Đánh dấu dòng nào được sửa trong git
	Plug 'mhinz/vim-signify'

	" Indent line
	Plug 'Yggdroot/indentLine'

	" Di chuyển nhanh hơn với vim-surround
	Plug 'tpope/vim-surround'

	"Format code
	Plug 'sbdchd/neoformat'	
call plug#end()
