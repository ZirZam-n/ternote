#!/bin/bash

DATA_DIR=~/.ternote
mkdir -p $DATA_DIR

function list_notes
  {
    for note in `ls $DATA_DIR`
      do
        echo $note: `head -n 1 $DATA_DIR/$note`
      done
  }

function print_note
  {
    cat $DATA_DIR/$1
  }

function add_note
  {
    if [[ $# -ne 1 ]]
      then
        printf "note name? "
        read note_name
      else
        note_name=$1
    fi
    vim $DATA_DIR/$note_name
  }

function delete_note
  {
    rm $DATA_DIR/$1
  }

case $1 in
  "l")
    list_notes
    ;;
  "n")
    add_note $2
    ;;
  "p")
    print_note $2
    ;;
  "d")
    delete_note $2
esac

