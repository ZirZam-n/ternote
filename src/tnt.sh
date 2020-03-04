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
    vim $DATA_DIR/$1
  }

case $1 in
  "l")
    list_notes
    ;;
  "n")
    shift
    add_note $@
    ;;
  "p")
    shift
    print_note $@
    ;;
esac

