# carp-vim

This repository contains a Vim plugin for Carp. It is largely
based on [the racket vim plugin for pathogen](https://github.com/wlangstroth/vim-racket).

Syntax checking is supported via [ALE](https://github.com/dense-analysis/ale).
If you have ALE installed and `carp` is on your `$PATH`, it will run
`carp --check` asynchronously when you open or save a `.carp` file.

To enable Paredit, if you've already installed the plugin, add the following
line to your `.vimrc`:

```vim
au FileType carp call PareditInitBuffer()
```

## Installation

### Pathogen

Probably the most handy way to install the Carp vim plugin is by using
[pathogen](https://github.com/tpope/vim-pathogen). Installation using
pathogen goes like this:

```bash
cd ~/.vim/bundle
git clone git@github.com:hellerve/carp-vim.git
```

### Vim-Plug

To install using [Vim-Plug](https://github.com/junegunn/vim-plug), add this line between the `plug#begin` and `plug#end`
calls in your `.vimrc` or `init.vim` in Neovim.

```vim
Plug 'hellerve/carp-vim'
```

### Manual

#### Unix

The "installation" process should look something like this on Unix-based
OSs:

```bash
git clone git@github.com:hellerve/carp-vim.git
cd carp-vim
cp -r ale_linters ftdetect ftplugin indent syntax ~/.vim
```
