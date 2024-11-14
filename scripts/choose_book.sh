#!/bin/bash

DIRECTORY=$(find ~/lab/bubuks -type f -not -path "*/.git/*" | fzf)

source ~/lab/env/bin/activate
epy "$DIRECTORY"
