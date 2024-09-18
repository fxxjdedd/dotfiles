scriptencoding utf-8

" ===
" === Basic Mappings
" ===
let mapleader=" "
noremap ; :

" Save & quit
noremap Q :q<CR>
" noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>ro :e $HOME/.config/nvim/viml/plugins.config/coc.nvim.vim<CR>
noremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>
noremap <LEADER>rm :e $HOME/.config/nvim/viml/mapping.vim<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>


" Delete find pair
nnoremap dy d%

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" redo
nnorema <C-u> :redo<CR>

" ===
" === Cursor Movement
" ===

noremap <silent> \v v$h

" K/J keys for 5 times k/j (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j

" I key: go to the end of the line
noremap <silent> I $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" Ctrl + U or E will move up/down the view port without moving the cursor
" noremap <C-U> 5<C-y>
" noremap <C-E> 5<C-e>

" XDG_CONFIG_HOME is ~/.config
" source $XDG_CONFIG_HOME/nvim/cursor.vim

" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w "window
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j "控制台
noremap <LEADER>h <C-w>h "侧边栏
noremap <LEADER>l <C-w>l
noremap qf <C-w>o


" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <down> :res +5<CR>
noremap <up> :res -5<CR>
noremap <right> :vertical resize-5<CR>
noremap <left> :vertical resize+5<CR>


" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Opening a terminal window
noremap <LEADER>\ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '' and edit it
" noremap <LEADER><LEADER> <Esc>/<CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of ~)
noremap ` ~

" find and replace
noremap \s :%s//g<left><left>

" set wrap
noremap <LEADER>sw :set wrap<CR>

" close terminal
tnoremap <Esc><Esc> <C-\><C-n>:q!<CR>

" https://vi.stackexchange.com/questions/19276/how-to-keep-the-neovim-terminal-buffer-in-the-buffer-list-even-after-it-being-hi
"augroup custom_term
"    autocmd!
"    autocmd TermOpen * setlocal bufhidden=hide
"augroup END

noremap <LEADER><LEADER> vaw
noremap <LEADER>w vaw

"快速来到括号、引号等符号的后面继续书写
imap <C-c> <Esc>la

" Remember
" 快速注释 <LEADER>/
" 按行圈选 <Enter>
" 临时退出vim再回来 Ctrl+Z 然后 fg
" 切换回刚才的window <LEADER>w
" coc相关的在viml/plugins.config/coc.nvim.vim
