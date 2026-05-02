" Name: ANSI

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ansi"


" --- Editor UI ---

" Normal text keeps the terminal default
hi Normal       ctermbg=NONE ctermfg=NONE cterm=NONE

" Line numbers and gutter
hi LineNr       ctermbg=NONE ctermfg=8    cterm=NONE
hi CursorLineNr ctermbg=NONE ctermfg=8    cterm=bold
hi SignColumn   ctermbg=NONE ctermfg=8    cterm=NONE

" Visual selection and searching
hi Visual       ctermbg=8    ctermfg=15   cterm=bold
hi Search       ctermbg=3    ctermfg=0    cterm=bold
hi IncSearch    ctermbg=1    ctermfg=15   cterm=bold,underline

" Status line and splits
hi StatusLine   ctermbg=7    ctermfg=0    cterm=bold
hi StatusLineNC ctermbg=8    ctermfg=0    cterm=NONE
hi VertSplit    ctermbg=NONE ctermfg=8    cterm=NONE

" Popups and autocomplete
hi Pmenu        ctermbg=8    ctermfg=15   cterm=NONE
hi PmenuSel     ctermbg=4    ctermfg=15   cterm=bold
hi MatchParen   ctermbg=6    ctermfg=0    cterm=bold

" Warnings and errors
hi ErrorMsg     ctermbg=1    ctermfg=15   cterm=bold
hi WarningMsg   ctermbg=NONE ctermfg=3    cterm=bold


" --- Syntax Highlighting ---

" Comments (Dark Gray / Bright Black) - explicitly italic
hi Comment      ctermbg=NONE ctermfg=8    cterm=italic

" Constants, Strings, Numbers, Booleans
hi Constant     ctermbg=NONE ctermfg=3    cterm=NONE
hi String       ctermbg=NONE ctermfg=2    cterm=italic
hi Number       ctermbg=NONE ctermfg=3    cterm=bold
hi Boolean      ctermbg=NONE ctermfg=5    cterm=bold,italic

" Identifiers and Functions
hi Identifier   ctermbg=NONE ctermfg=NONE cterm=NONE
hi Function     ctermbg=NONE ctermfg=4    cterm=bold

" Statements, Keywords, Conditionals (Magenta)
hi Statement    ctermbg=NONE ctermfg=5    cterm=bold
hi Conditional  ctermbg=NONE ctermfg=5    cterm=bold,italic
hi Repeat       ctermbg=NONE ctermfg=5    cterm=bold,italic
hi Operator     ctermbg=NONE ctermfg=6    cterm=NONE
hi Keyword      ctermbg=NONE ctermfg=5    cterm=bold

" Preprocessor directives (Cyan)
hi PreProc      ctermbg=NONE ctermfg=6    cterm=bold
hi Include      ctermbg=NONE ctermfg=4    cterm=italic
hi Macro        ctermbg=NONE ctermfg=6    cterm=NONE

" Types and Classes (Cyan/Blue)
hi Type         ctermbg=NONE ctermfg=6    cterm=italic
hi StorageClass ctermbg=NONE ctermfg=5    cterm=bold
hi Structure    ctermbg=NONE ctermfg=6    cterm=bold

" Special characters and symbols (Red)
hi Special      ctermbg=NONE ctermfg=1    cterm=bold
hi Delimiter    ctermbg=NONE ctermfg=8    cterm=NONE

" Errors and Todos
hi Error        ctermbg=1    ctermfg=15   cterm=bold,underline
hi Todo         ctermbg=3    ctermfg=0    cterm=bold,italic
