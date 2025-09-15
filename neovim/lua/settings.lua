local set = vim.opt
vim.g.mapleader = ";"

set.autoread=true
set.autowrite=true
set.backup=true
set.writebackup=true
set.backupdir='/Users/edy/.config/nvim/backups'
set.clipboard='unnamedplus'
set.completeopt='menu,menuone,noselect'
set.equalalways=false
set.fillchars='eob: ,fold: ,diff:⣿,vert:│'
set.listchars='tab:│ ,eol:¬,trail:~,extends:>,precedes:<,nbsp:•'
set.gdefault=true
set.grepprg='rg --vimgrep'
set.hidden=true
set.smartindent=true
set.autoindent=true
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
set.undodir='/Users/edy/.config/nvim/undos'
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
set.linebreak=false
set.list=true
set.number=true
set.relativenumber=false
set.signcolumn='yes'
set.spell=false
set.winfixheight=true
set.wrap=false

-- vim.cmd "colorscheme moonlight"
vim.cmd "nnoremap <C-p> <cmd>FZF<cr>"
vim.cmd "nnoremap <C-l> <cmd>GFiles<cr>"
vim.cmd "tnoremap <Esc> <C-\\><C-n>"

local cmd = vim.cmd

cmd('command! Definition lua vim.lsp.buf.type_definition()')
cmd("nnoremap <C-d> <cmd>Definition<cr>")

cmd('command! Rename lua vim.lsp.buf.rename()')
cmd("nnoremap <leader>rn <cmd>Rename<cr>")

-- window mappings
cmd("nnoremap <leader>w <C-w>w")
cmd("nnoremap <leader>l :vsplit<CR>")
cmd("nnoremap <leader>L :split<CR>")
cmd("nnoremap <leader>s :w<CR>")
cmd("nnoremap <leader>q :q<CR>")
cmd("nnoremap <leader>Q :q!<CR>")
cmd("inoremap <leader>; <Esc>")

cmd('command! Hover lua vim.lsp.buf.hover()')
cmd("nnoremap <C-k> <cmd>Hover<cr>")

cmd('command! CodeAction lua vim.lsp.buf.code_action()')
cmd("nnoremap <C-space> <cmd>CodeAction<cr>")

cmd("nnoremap <leader>b <cmd>bp<cr>")
cmd("nnoremap <leader>n <cmd>bn<cr>")

-- https://www.reddit.com/r/neovim/comments/gm4ir3/does_the_new_builtin_lsp_client_support/
-- cmd("nnoremap <silent> ff <cmd>lua vim.lsp.buf.format { async = true }<CR>")
cmd("nnoremap ff <cmd>lua vim.lsp.buf.format { async = true }<CR>")

cmd("inoremap \" \"\"<left>")
cmd("inoremap \' \'\'<left>")
cmd("inoremap ( ()<left>")
cmd("inoremap [ []<left>")
cmd("inoremap { {}<left>")
cmd("inoremap {<CR> {<CR><CR>}<Esc><up>i<Tab>")

-- Neotree bindings
cmd("nnoremap <leader>[ <cmd>Neotree toggle current reveal_force_cwd<cr>")
cmd("nnoremap gd <cmd>Neotree float reveal_file=<cfile> reveal_force_cwd<cr>")
cmd("nnoremap <leader>b <cmd>Neotree toggle show buffers right<cr>")

-- move lines up and down in visual mode
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<leader><CR>', 'o<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>o', ':only<CR>', { noremap = true, silent = true })

-- binding for :e!
cmd("nnoremap <leader>E :e!<CR>")

-- binding for :LazyGit
cmd("nnoremap <leader>gg :LazyGit<CR>")

-- Open a terminal with <leader>c
vim.keymap.set('n', '<leader>c', function()
  -- Open a terminal in a horizontal split
  vim.cmd('split | terminal')

  -- Automatically enter insert mode in the terminal
  vim.cmd('startinsert')
end, { noremap = true, silent = true })

-- Map <Esc> in terminal mode to go back to normal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- LazyGit bindings
cmd("nnoremap <leader>g <cmd>FloatermNew --height=0.9 --width=0.9 --autoclose=2 lazygit<cr>")

-- cmd("nnoremap / <cmd>Neotree toggle current reveal_force_cwd<cr>")

---- nnoremap | :Neotree reveal<cr>
-- 
-- nnoremap <leader>s :Neotree float git_status<cr>


-- cmd("nmap <silent> <leader>t :TestNearest<CR>")
-- cmd("nmap <silent> <leader>T :TestFile<CR>")
-- cmd("nmap <silent> <leader>a :TestSuite<CR>")
-- cmd("nmap <silent> <leader>l :TestLast<CR>")
-- cmd("nmap <silent> <leader>g :TestVisit<CR>")

-- Mapping nvim tree stuff
cmd("nmap <leader>n :Neotree<CR>")
