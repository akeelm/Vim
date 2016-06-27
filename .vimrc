set nocompatible              " required 
filetype off                  " required 
 
 
execute pathogen#infect() 
 
 
" Theme 
syntax on 
let g:solarized_termcolors=256  
set t_Co=256 
set background=dark 
colorscheme solarized 
 
  
" Line numbers 
set number 

  
" Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
set nu!
	set rnu
endfunction
function! ToggleRelativeOn()
set rnu!
	set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" Indentation 
set sts=4 
set ts=4 
set sw=4 
      
" Enable folding 
set foldmethod=indent 
set foldlevel=99 
" Enable folding with spacebar 
nnoremap <space> za 
       
"Syntastic lint on open
let g:syntastic_check_on_open=1

"Tern_for_vim mapping
nnoremap <buffer> gd :TernDef<CR>

"Lightline 
set laststatus=2

"NERDTree mapping
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

"Vim-test mapping
nmap <silent> ,t :TestNearest<CR>
nmap <silent> ,T :TestFile<CR>
nmap <silent> ,a :TestSuite<CR>
nmap <silent> ,l :TestLast<CR>
nmap <silent> ,g :TestVisit<CR>

"Line break mapping
imap <C-c> <CR><Esc>O
        
" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
       
          
" alternatively, pass a path where Vundle should install plugins 
"call vundle#begin('~/some/path/here') 
           
          
" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim' 
             
              
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin) 
Plugin 'scrooloose/nerdtree'	"Filetree browser 
Plugin 'tmhedberg/SimpylFold'	"Fold code 
Plugin 'itchyny/lightline.vim'  "Configurable VIM status line 
Plugin 'skammer/vim-css-color'	"Show colours in CSS files 
Plugin 'Valloric/YouCompleteMe' "Auto completion
Plugin 'janko-m/vim-test'		"Run tests
Plugin 'Raimondi/delimitMate'	"Auto close quotes, brackets etc.
Plugin 'scrooloose/syntastic'	"Syntax checking / Linting
Plugin 'ternjs/tern_for_vim'	"Javascript completion
Plugin 'tpope/vim-surround'		"Surround text with stuff
Plugin 'ctrlpvim/ctrlp.vim'		"File finder
Plugin 'mileszs/ack.vim'		"Searching files
Plugin 'tpope/vim-fugitive'		"Vim Git wrapper

" Snippets Config
Plugin 'SirVer/ultisnips'		"Snippets
Plugin 'honza/vim-snippets'		"Snippets collection
Plugin 'ervandew/supertab'		"For ultisnips and YouCompleteMe to work together
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" All of your Plugins must be added before the following line 
call vundle#end()            " required 
filetype plugin indent on    " required 
                  
