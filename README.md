# Neovim Configuration Overview

This repository contains a custom Neovim setup built with Lua, focusing on a modular and feature-rich editing experience. Below is a detailed breakdown of the plugins, structure, and UI elements present in this configuration.

## Directory Structure

The configuration follows a typical Lua-based Neovim setup:

- **`lua/`**: Core configuration files.
  - **`core/`**: General settings, keymaps, and plugin loading logic.
  - **`plugins/`**: Plugin-specific configurations, split into subdirectories for organization:
    - **`core/`**: Essential plugins.
    - **`lsp/`**: Language Server Protocol (LSP) plugins.
    - **`ui/`**: UI enhancement plugins.
    - Other plugin files (e.g., `auto-close.lua`, `todo-comments.lua`).

## Plugin Overview

### Core Plugins

These plugins form the foundation of the editing environment:

- **`bufferline.nvim`**: Displays and manages open buffers as tabs.
  - Configured in `lua/plugins/core/bufferline.lua`.
- **`lualine.nvim`**: A customizable status line.
  - Configured in `lua/plugins/core/lualine.lua`.
- **`nvim-tree.lua`**: A file explorer tree.
  - Configured in `lua/plugins/core/nvim-tree.lua`.
- **`oil.nvim`**: A lightweight file manager for editing the filesystem like a buffer.
  - Configured in `lua/plugins/core/oil.lua`.
- **`telescope.nvim`**: A fuzzy finder for files, buffers, and more.
  - Configured in `lua/plugins/core/telescope.lua`.
- **`nvim-treesitter`**: Enhanced syntax highlighting and code parsing.
  - Configured in `lua/plugins/core/treesitter.lua`.

### LSP Plugins

Language Server Protocol support for coding features like autocompletion and diagnostics:

- **`conform.nvim`**: Code formatting with LSP integration.
  - Configured in `lua/plugins/lsp/conform.lua`.
- **`dressing.nvim`**: Improves UI for LSP inputs and selections.
  - Configured in `lua/plugins/lsp/dressing.lua`.
- **`nvim-lspconfig`**: Quickstart configurations for LSP servers.
  - Configured in `lua/plugins/lsp/lsp-config.lua`.
- **`none-ls.nvim`**: Extends LSP with additional linters and formatters.
  - Configured in `lua/plugins/lsp/none-ls.lua`.
- **`nvim-cmp`**: Autocompletion engine with LSP support.
  - Configured in `lua/plugins/lsp/nvim-cmp.lua`.
- **`ts-error-translator.nvim`**: Translates TypeScript errors into readable messages.
  - Configured in `lua/plugins/lsp/ts-error-translator.lua`.

### UI Plugins

Enhancements for Neovim’s visual interface:

- **`alpha-nvim`**: A customizable dashboard for Neovim startup.
  - Configured in `lua/plugins/ui/alpha.lua`.
- **`smooth.nvim`**: Smooth scrolling for a polished feel.
  - Configured in `lua/plugins/ui/smooth.lua`.
- **`transparent.nvim`**: Makes the background transparent.
  - Configured in `lua/plugins/ui/transparent.lua`.
- **`which-key.nvim`**: Displays a popup with keybinding hints.
  - Configured in `lua/plugins/ui/which-key.lua`.

### Miscellaneous Plugins

Additional productivity and editing tools:

- **`auto-close.nvim`**: Automatically closes brackets and quotes.
- **`auto-format.nvim`**: Formats code on save.
- **`auto-pairs.nvim`**: Inserts matching pairs (e.g., `()`, `[]`).
- **`codesnap.nvim`**: Generates code screenshots.
- **`comment.nvim`**: Quick commenting of code.
- **`lazyclip.nvim`**: Clipboard management.
- **`markdown.nvim`**: Markdown rendering and editing enhancements.
- **`surround.nvim`**: Easily manipulate surrounding characters (e.g., quotes, parentheses).
- **`themery.nvim`**: Theme switcher.
- **`tmux-navigation.nvim`**: Seamless navigation between Neovim and Tmux panes.
- **`todo-comments.nvim`**: Highlights TODOs and other annotations.
- **`trouble.nvim`**: Diagnostics viewer for LSP errors.
- **`wakatime.nvim`**: Tracks coding time via WakaTime.

## Key Features

### Window Navigation and Management

- Keybindings for moving focus between windows:
  - `<C-h>`: Left window.
  - `<C-l>`: Right window.
  - `<C-j>`: Lower window.
  - `<C-k>`: Upper window.
- Window splitting and resizing:
  - `<leader>sv`: Vertical split.
  - `<leader>sh`: Horizontal split.
  - `<leader>se`: Equalize split sizes.
  - `<leader>sx`: Close current split.

### UI Elements

The configuration emphasizes a clean and functional UI:

- **Alpha Dashboard**: Greeting screen on startup.
  - ![Alpha Dashboard Screenshot](https://ibb.co/qFxgFbPT)
- **Bufferline**: Tabs at the top for buffer navigation.
  - ![Bufferline Screenshot](https://ibb.co/gFHb3gnW)
- **Lualine**: Status line with mode, file info, and git status.
  - ![Lualine Screenshot](https://ibb.co/gMmG6gb6)
- **Telescope**: Fuzzy finder popup for quick searches.
  - ![Telescope Screenshot](https://ibb.co/V0c3ChHk)
- **Which-Key**: On-demand keybinding guide.
  - ![Which-Key Screenshot](https://ibb.co/Xk6w6ZB6)

### Coding Enhancements

- **Treesitter**: Syntax highlighting for multiple languages.
- **LSP Integration**: Autocompletion, diagnostics, and formatting via `nvim-cmp` and `lsp-config`.

## Configuration Details

- **Plugin Management**: Uses Lazy.nvim (implied by the `return {}` syntax) for lazy-loading plugins.
- **Keymaps**: Defined in `lua/core/keymaps.lua` (assumed) and plugin-specific files.
- **Modularity**: Plugins are split into `core`, `lsp`, `ui`, and standalone files for easy maintenance.

## Visual Style

- **Transparency**: Enabled via `transparent.nvim` for a modern look.
- **Themes**: Managed with `themery.nvim`, allowing easy switching.
- **Smooth Scrolling**: Provided by `smooth.nvim` for fluid navigation.
