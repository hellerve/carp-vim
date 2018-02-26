# carp-vim

This repository contains a Vim plugin for Carp . It is largely
based on [the racket vim plugin for pathogen](https://github.com/wlangstroth/vim-racket),
with a few extensions, e.g. for list comprehensions.

To enable syntax checking via syntastic, add the following line to your `.vimrc`:

```vim
let g:syntastic_carp_checkers = ['carp']
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
