local set = vim.opt

set.autoread=true
set.autowrite=true
set.backup=true
set.writebackup=true
set.backupdir='/home/edy/.config/nvim/backups'
set.clipboard='unnamedplus'
set.completeopt='menu,menuone,noselect'
set.equalalways=false
set.fillchars='eob: ,fold: ,diff:⣿,vert:│'
set.listchars='tab:│ ,eol:¬,trail:~,extends:>,precedes:<,nbsp:•'
set.gdefault=true
set.grepprg='rg --vimgrep'
set.hidden=true
set.hlsearch=true
set.ignorecase=true
set.incsearch=true
set.lazyredraw=true
set.matchtime=2
set.mouse='a'
set.scrolloff=3
set.shiftround=true
set.shortmess='atIc'
set.showbreak='└'
set.showmatch=true
set.showmode=false
set.sidescrolloff=10
set.smartcase=true
set.splitbelow=true
set.splitright=true
set.swapfile=false
set.termguicolors=true
set.timeoutlen=1000
set.title=true
set.ttimeoutlen=0
set.undodir='/home/edy/.config/nvim/undos'
set.undoreload=10000
set.wildmenu=true
set.wildmode='full:list:longest'

set.expandtab=true
set.shiftwidth=2
set.softtabstop=-1
set.tabstop=2
set.formatoptions='qrn1j'
set.spelllang='pt_br,en_us'
set.synmaxcol=800
set.syntax='on'
set.textwidth=120
set.undofile=true
set.undofile=true

set.cursorline=false
set.foldlevel=2
set.foldmethod='indent'
set.linebreak=true
set.list=true
set.number=false
set.relativenumber=false
set.signcolumn='yes'
set.spell=false
set.winfixheight=true
set.wrap=false

vim.cmd "colorscheme dracula"
vim.cmd "nnoremap <leader>ff <cmd>FZF<cr>"
-- vim.cmd "nnoremap <leader>td <cmd>vim.diagnostic.type_definition<cr>"

local cmd = vim.cmd

-- gambiarra pra fazer o type_definito funcionar com map
cmd('command! Definition lua vim.lsp.buf.type_definition()')
cmd("nnoremap <leader>td <cmd>Definition<cr>")

cmd('command! Rename lua vim.lsp.buf.rename()')
cmd("nnoremap <leader>rn <cmd>Rename<cr>")
