#!/bin/bash

DIRECTORY=$(find ~/lab/git/dotfiles/bubuks -type f -not -path "*/.git/*" | fzf)

source ~/env/bin/activate
epy "$DIRECTORY"
