<h1 align="center">🪨 lignite.nvim</h1>
<p align="center">
    <i>A Gruvbox Dark Hard-inspired colorscheme for Neovim.</i>
</p>

> [!NOTE]
> lignite.nvim is in early development. Bug reports and feature suggestions are
> welcome!

## Why another one?

Gruvbox is an amazing theme, but it was created a long time ago for Vim.
Neovim ports exist, but they either lack support for modern plugins or make
odd choices in the adaptation.

Lignite is built exclusively for Neovim, with tree-sitter and LSP highlighting
as first-class citizens, and aims to keep up with the major plugins.

- **Why not the original [gruvbox](https://github.com/morhetz/gruvbox)?** It
  predates tree-sitter and Neovim's LSP client, has no support for Neovim
  plugins, and is slow to load.
- **Why not [gruvbox8](https://codeberg.org/lifepillar/vim-gruvbox8) or
  [retrobox](https://github.com/neovim/neovim/blob/master/runtime/colors/retrobox.vim)?**
  Neither offers proper tree-sitter, LSP or Neovim plugin support.
- **Why not [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)?** It
  doesn't cover some modern Neovim plugins, and I don't like its defaults.
- **Why not [gruvbox-material](https://github.com/sainnhe/gruvbox-material)?**
  It isn't quite Gruvbox anymore, although you can configure it to look almost
  like the original. It's also written in Vimscript and supports both Vim and
  Neovim, which doesn't interest me: I only use Neovim, and Vim support could
  slow the colorscheme down and bloat it. It's still a good theme, but I like
  mine better.

## Installation

### lazy.nvim

```lua
{
    "warbacon/lignite.nvim",
    priority = 1000,
    lazy = false,
    config = function()
        vim.cmd.colorscheme("lignite")
    end,
},
```

### vim.pack

```lua
vim.pack.add("https://github.com/warbacon/lignite.nvim")
vim.cmd.colorscheme("lignite")
```

## Plugin support

- mini.icons
- snacks.picker
- render-markdown.nvim
- lualine.nvim
- blink.cmp

## Extras

- kitty
- Windows Terminal
- fzf

## License

lignite.nvim is released under the [MIT License](LICENSE).

## Credits

- [gruvbox](https://github.com/morhetz/gruvbox) by Pavel Pertsev, for the
  original palette and design this colorscheme is based on.
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) by ellisonleao,
  for reference on how to adapt Gruvbox to Neovim highlight groups
