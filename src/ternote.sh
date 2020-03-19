#!/bin/bash

DATA_DIR=~/.ternote
mkdir -p $DATA_DIR

PROG=`echo $0 | rev | cut -d'/' -f1 | rev`

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

function edit_note
{
  if [[ $# -ne 1 ]]
    then
      printf "note name? "
      read note_name
    else
      note_name=$1
  fi
  editor $DATA_DIR/$note_name
}

function delete_note
{
  rm $DATA_DIR/$1
}

function print_help
{
  cat <<EOF
Usage: $PROG l: list notes
       $PROG e [<note_title>]: add/edit note
       $PROG p <note_title>: print note
       $PROG d <note_title>: delete note
       $PROG <any_thing_else>: show this help
EOF
}

case $1 in
  l)
    list_notes
    ;;
  e)
    edit_note $2
    ;;
  p)
    print_note $2
    ;;
  d)
    delete_note $2
    ;;
  *)
    print_help $0
    exit 1
    ;;
esac

