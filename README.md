<h1 align="center">📀 lignite.nvim</h1>
<p align="center">
    <i>A Gruvbox Dark Hard-inspired colorscheme for Neovim.</i>
</p>

> [!NOTE]
> lignite.nvim is in early development. Bug reports and feature suggestions are
> welcome.

## Why another one?

Gruvbox is an amazing theme, but it was created a long time ago for Vim.
Neovim ports exist, but they either lack support for modern plugins or made
odd choices in the adaptation.

Lignite is built exclusively for Neovim, with tree-sitter and LSP highlighting
as first-class citizens, and aims to keep up with the major plugins.

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
- lualine.nvim _(partial)_

## License

lignite.nvim is released under the [MIT License](LICENSE).

## Credits

- [gruvbox](https://github.com/morhetz/gruvbox) by Pavel Pertsev, for the
  original palette and design this colorscheme is based on.
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) by ellisonleao,
  for reference on how to adapt Gruvbox to Neovim highlight groups
