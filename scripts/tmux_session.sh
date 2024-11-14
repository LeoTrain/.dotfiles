#!/bin/bash

existing_sessions=$(tmux list-sessions -F "#S" 2>/dev/null)
selected_option=$(echo -e "Create a new session\n$existing_sessions" | fzf --height=10 --border --ansi)

if [ "$selected_option" = "Create a new session" ]; then
  echo "New session :"
  read -p "Name the session: " session_name

  if [ -z "$session_name" ]; then
    echo "Project name empty, annulating."
    exit 1
  fi

  echo "Would you like to use an existing folder or create a new one?"
  echo "1. Use an existing folder"
  echo "2. Create a new folder"
  read -p "Choose an option (1/2): " choice

  if [ "$choice" = "1" ]; then
    DIRECTORY=$(find ~/lab -type d | fzf --height=10 --border --ansi)
    if [ -z "$DIRECTORY" ]; then
      echo "No directory selected, annulating."
      exit 1
    fi
  elif [ "$choice" = "2" ]; then
    DIRECTORY=~/git/"$session_name"
    mkdir -p "$DIRECTORY"
    echo "Folder '$DIRECTORY' created."
  else
    echo "Invalid option, annulating."
    exit 1
  fi

  SESSION_NAME="$session_name"
else
  SESSION_NAME=$selected_option
  DIRECTORY=~/git/"$SESSION_NAME"
fi

tmux has-session -t "$SESSION_NAME" 2>/dev/null
if [ $? != 0 ]; then
  tmux new-session -d -s "$SESSION_NAME" -c "$DIRECTORY"
  echo "New Tmux session '$SESSION_NAME' created in '$DIRECTORY'."
else
  echo "Tmux session '$SESSION_NAME' already existing."
fi

tmux attach-session -t "$SESSION_NAME"

