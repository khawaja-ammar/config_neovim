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
- nvim-ufo (folding lines/funcs)
- todo-comments
- LuaSnip + friendlysnippets
- Explorer:
    - telescope file browser
    - ranger.nvim / rnvimr
    - oil.nvim

## Vim Keys

### Insert Mode

### Normal Mode

### Visual Mode

### Command Mode

Command mode is started by pressing ":" and typing the command

- :q    => Quit
- :q!   => Force quit
- :w    => Write file
- :wq   => Write file + quit
- :wa   => Write all files in buffer
- :wqa  => Write all files in buffer and quit

- :Ex   => Open vim explorer


## Custom Keybinds

### <C->

- C-space   => Incremental selection Treesitter (use <bs> to decrement) 
- C-p       => Files Files
- C-_ (/)   => Comment Line(s) 

### <A->

- A-z       => Toggle Word wrap

### <leader>p(roject)

- pe        => Project Explorer
- pf        => Project Files
- ps        => Project Grep search

### <leader>g(it)

