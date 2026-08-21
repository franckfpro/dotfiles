" ============================================================================
" 1. CONFIGURATION SYSTEME & APPARENCE
" ============================================================================
set number                  " Affiche les numéros de ligne
set relativenumber          " Numérotation relative pour les sauts verticaux
set mouse=a                 " Active la souris dans tous les modes
set clipboard=unnamedplus   " Presse-papier système (nécessite xclip/wl-clipboard)
set syntax=on               " Coloration syntaxique
set termguicolors           " Couleurs 24-bit
set encoding=utf-8          " Encodage universel
set hidden                  " Permet de masquer un buffer sans le sauvegarder
set laststatus=2            " Force l'affichage de la barre d'état (statusline)

colorscheme retrobox

" ============================================================================
" 2. INDENTATION & COMPORTEMENT
" ============================================================================
set expandtab               " Espaces à la place des tabulations
set tabstop=4               " Largeur d'une tabulation
set shiftwidth=4            " Taille de l'indentation automatique
set autoindent              " Conserve l'indentation précédente
set smartindent             " Indentation intelligente

" ============================================================================
" 3. RECHERCHE & PERFORMANCE
" ============================================================================
set hlsearch                " Surligne les recherches
set incsearch               " Recherche incrémentale
set ignorecase              " Ignore la casse...
set smartcase               " ...sauf si une majuscule est tapée
set scrolloff=8             " Marge de 8 lignes en défilement vertical
set wildmenu                " Menu d'autocomplétion des commandes amélioré

" ============================================================================
" 4. CONFIGURATION DE LA STATUSLINE (BARRE D'ÉTAT) NATIVE
" ============================================================================
" On nettoie la statusline existante
set statusline=

" Section GAUCHE
set statusline+=%#Visual#\                   " Groupe de couleur (Inversé/Visual)
set statusline+=%#StatusLine#\               " Retour au style standard

set statusline+=\ %f                         " Chemin du fichier (relatif)
set statusline+=%m                           " Indicateur de modification [+]
set statusline+=%r                           " Indicateur de lecture seule [RO]
set statusline+=%h                           " Indicateur d'aide [Help]
set statusline+=%w                           " Indicateur de prévisualisation [Preview]

" Séparateur (pousse le reste du texte à droite)
set statusline+=%=

" Section DROITE
set statusline+=%#StatusLineNC#              " Style légèrement contrasté
set statusline+=\ %Y\                        " Type de fichier (Python, Bash, etc.)
set statusline+=\ [%{&fileformat}]           " Format de fin de ligne (unix, dos)
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding}] " Encodage
set statusline+=\ %#Visual#                  " Groupe de couleur pour les coordonnées
set statusline+=\ %l/%L                      " Ligne courante / Total des lignes
set statusline+=\ :\ %c\                     " Colonne courante

" ============================================================================
" 5. RACCOURCIS CLAVIERS & REMPLACEMENTS DE PLUGINS
" ============================================================================
let mapleader = " "

" Nettoyer le surlignage de la recherche (Espace + h)
nnoremap <Leader>h :nohlsearch<CR>

" Navigation entre les fenêtres (Ctrl + hjkl)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remplacer NERDTree par Netrw (l'explorateur natif de Vim/Neovim)
" - :Ex ouvre l'explorateur dans le buffer courant
" - <Leader>e ouvre l'explorateur en mode 'Vsplit' à gauche (largeur 30)
let g:netrw_banner = 0       " Masque la bannière d'aide inutile en haut
let g:netrw_liststyle = 3    " Affichage en arbre (comme NERDTree)
let g:netrw_winsize = 25     " Prend 25% de l'écran lors d'un split
nnoremap <Leader>e :Lexplore<CR>

" ============================================================================
" 6. DIVERS
" ============================================================================
set list

" Highlight match parentheses
set showmatch
set matchtime=3

" Close the open parentheses
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap < <><Esc>:let leavechar=">"<CR>i
inoremap " ""<Esc>:let leavechar='"'<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap ` ``<Esc>:let leavechar="`"<CR>i

" Save on each command who lose focus
set autowrite

if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

" ============================================================================
" KEYS MAPPING
" ============================================================================

" Copy visual selection
vmap <C-c> "+y

" Search will center on the line it's found in
nnoremap n nzzzv
nnoremap N Nzzzv

" Case errors prof
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Indent in Visual mode
vmap < <gv
vmap > >gv

