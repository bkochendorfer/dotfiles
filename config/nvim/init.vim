" Install plugins
call plug#begin('~/.vim/plugged')

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fugitive (Git Blame and such)
Plug 'tpope/vim-fugitive'

" Github URL
Plug 'pgr0ss/vim-github-url'

" Nerd Tree
Plug 'scrooloose/nerdtree'

" Nvim Dashboard
Plug 'glepnir/dashboard-nvim'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Smoooooth scroll
Plug 'terryma/vim-smooth-scroll'

" Tcomment
Plug 'tomtom/tcomment_vim'

" Terraform
Plug 'hashivim/vim-terraform'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

call plug#end()

" Investigate this
lua require'nvim-treesitter.configs'.setup { indent = { enable = true }, highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1
let g:user_emmet_settings = {
  \  'svelte' : {
  \    'extends' : 'html',
  \  },
  \  'javascript.jsx' : {
  \    'extends' : 'jsx',
  \  },
  \  'javascript' : {
  \    'extends' : 'jsx',
  \  },
  \  'js' : {
  \    'extends' : 'jsx',
  \  },
  \  'jsx' : {
  \    'extends' : 'html',                                                                                                                                                             
  \  },                                                                                                                                                                                
  \} 
