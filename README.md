# carp-vim

This repository contains a Vim plugin for Carp that is only
capable of syntax highlighting at the moment. It is largely
based on [the racket vim plugin for pathogen](https://github.com/wlangstroth/vim-racket),
with a few extensions, e.g. for list comprehensions.

## Installation

### Pathogen

Probably the most handy way to install the Carp vim plugin is by using
[pathogen](https://github.com/tpope/vim-pathogen). Installation using
pathogen goes like this:

```bash
cd ~/.vim/bundle
git clone git@github.com:carp-lang/carp-vim.git
```

### Manual

#### Unix

The "installation" process should look something like this on Unix-based
OSs:

```bash
git clone https://github.com/carp-lang/carp-vim.git
cd carp-vim
cp -r ftdetect ~/.vim
cp -r syntax ~/.vim
```
