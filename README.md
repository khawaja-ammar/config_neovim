# Neovim Config

Basic neovim config experimenting with different plugins using lazy plugin manager

## External Tools recommeded

- ripgrep
- fs
- tmux?

## Plugin Classifications

- UI
- Editor
- Coding
- Formatting
- Linting
- LSP
- Treesitter

## Interesting Plugins

- nvim-ufo (folding lines/funcs)
- SQL Built in?? => vim-dadbod, vim-dadbod-ui, vim-dadbod-comp
- lspsaga ?
- leap.nvim, flash.nvim
- make find_files, git_files search case insensitive
- Add \<leader>q to close current buffer and open the explorer (:Ex OR whatever file manager)
- fugitive
- undo tree OR telescope undo
- harpoon (bookmark pages) => (C-Tab, C-Shift-Tab to traverse + other cmds)
- in-vim terminal (C-``) for running server/debudding => Maybe **tmux** better?
- Emoji picker
- Explorer:
  - ranger.nvim / rnvimr

## Vim Marks

- vim marks?? how do they function?

## Vim Keys

### Normal Mode

**TO ENTER**
I, V, C =>
esc
C-c

**MOTIONS**
h - move cursor left
j - move cursor down
k - move cursor up
l - move cursor right

w - jump forwards to the start of a word
W - jump forwards to the start of a word (words can contain punctuation)
e - jump forwards to the end of a word
E - jump forwards to the end of a word (words can contain punctuation)
b - jump backwards to the start of a word
B - jump backwards to the start of a word (words can contain punctuation)

0 - jump to the start of the line
$ - jump to the end of the line

f{c}- jump to the next occurrence of a character (i.e fx jumps to first x in the line)
F{c}- jump back to the prev occurrence of a character (i.e fx jumps back to first x in the line)
t{c}-
T{c}-
; - repeat previous f, t, F or T movement
, - repeat previous f, t, F or T movement, backwards

gg - go to the first line of the document
G - go to the last line of the document

C-u - move cursor + screen [U]p half page
C-d - move cursor + screen [D]own half page

% - move cursor to matching character (default supported pairs: '()', '{}', '[]' - use :h matchpairs in vim for more info)

**OPS**
x - Cut
y - Yank (Copy)
p - Paste

u - Undo
C-r - Redo

### Insert Mode

**TO ENTER**:
N =>
i - Insert before current character
a - Insert after current character
I - Insert at the beginning of current line
A - Insert at the end of current line
o - Create a new line after current line and insert there
O - Create a new line before current line and insert there

### Visual Mode

**TO ENTER**:
N => v

### Visual LINE Mode ✨

**TO ENTER**:
N => V (Shift + v)

### Visual TAB Mode

**TO ENTER**
N => C-v

### Command Mode

**TO ENTER**
N => :

q - Quit
q! - Force quit
w - Write file
wq - Write file + quit
wa - Write all files in buffer
wqa - Write all buffer and quit
bd - Close (delete) current buffer

Ex - Open vim explorer

{#}- Jump to Line Number (e.g :100, :50)

### Search Mode

/ - Search for pattern
? - Search backwards for pattern

## Custom Keybinds

### \<C->

sp- Incremental selection Treesitter (use <bs> to decrement)
p - Files Files
\_ - Comment Line(s)

### \<A->

z - Toggle Word wrap

### \<leader>p(roject)

e - Project Explorer
f - Project Files
s - Project Grep search

### \<leader>g(it)
