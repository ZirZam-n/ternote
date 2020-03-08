#!/bin/bash

BINPATH=/usr/bin

should_ask=0

function ask
{
  printf "$@"
  if [[ $should_ask -eq 1 ]]
    then
      printf "?"
      read s
    else
      echo ""
    fi
}

if [[ $1 != "-y" ]]
  then
    echo "after each question, if you agree just press [ENTER],"
    echo "  otherwise press [Ctrl]+c to exit"
    echo "  also you can run this as \`./setup.sh -y\`"
    should_ask=1
  fi

ask "add execute permission to ternote"
chmod +x ./src/ternote.sh

ask "copy ternote to $BINPATH"
sudo cp ./src/ternote.sh $BINPATH/ternote

ask "done"
