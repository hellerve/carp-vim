# carp-vim

This repository contains a Vim plugin for Carp. It is largely
based on [the racket vim plugin for pathogen](https://github.com/wlangstroth/vim-racket).

To enable syntax checking via syntastic, add the following line to your `.vimrc`:

```vim
let g:syntastic_carp_checkers = ['carp']
```

To enable auto-indentation, if it's not already working, add the following line to your `.virmc`:

```vim
au FileType carp set lisp
```

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
cp -r ftdetect ~/.vim
cp -r syntax ~/.vim
```
