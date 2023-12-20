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

- REPLACE ultimate auto pair (with what?)
- undo tree OR telescope undo
- harpoon (bookmark pages) => (C-Tab, C-Shift-Tab to traverse + other cmds)
- in-vim terminal (C-``) for running server/debudding => Maybe tmux better?
- Emoji picker
- nvim-ufo (folding lines/funcs)
- todo-comments
- LuaSnip + friendlysnippets
- Explorer:
    - telescope file browser
    - ranger.nvim / rnvimr

## Vim Keys

### Normal Mode

### Insert Mode

**TO ENTER**:
- N => 
    - \<i>   => Insert before current character
    - \<a>   => Insert after current character
    - \<I>   => Insert at the beginning of current line
    - \<A>   => Insert at the end of current line
    - \<o>   => Create a new line after current line and insert there
    - \<O>   => Create a new line before current line and insert there


### Visual Mode

**TO ENTER**:
N => \<v>

### Visual LINE Mode ✨

**TO ENTER**:
N => \<V>

### Command Mode

Command mode is started by pressing ":" and typing the command

- :q    => Quit
- :q!   => Force quit
- :w    => Write file
- :wq   => Write file + quit
- :wa   => Write all files in buffer
- :wqa  => Write all files in buffer and quit

- :Ex   => Open vim explorer

- /     => Search

## Custom Keybinds

### \<C->

- C-space   => Incremental selection Treesitter (use <bs> to decrement) 
- C-p       => Files Files
- C-_ (/)   => Comment Line(s) 

### \<A->

- A-z       => Toggle Word wrap

### \<leader>p(roject)

- pe        => Project Explorer
- pf        => Project Files
- ps        => Project Grep search

### \<leader>g(it)

