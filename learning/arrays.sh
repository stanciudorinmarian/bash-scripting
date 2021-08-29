#!/usr/bin/env bash

OPTIONS=('Docker' 'Git' 'PhpStorm' 'Node.js' 'npm' 'NVM')
EMPTY=()

echo "Total number of items: ${#OPTIONS[@]}"
echo "Second item: ${OPTIONS[1]}"

function isEmpty() {
  receivedArray=($@)

#  if [[ ${#receivedArray[@]} -le 0 ]]; then
#    echo "Is empty."
#  else
#    echo "Not empty."
#  fi

  if (( ${#receivedArray[@]} <= 0 )); then
    echo "Is empty."
  else
    echo "Not empty."
  fi
}

isEmpty "${EMPTY[@]}"
isEmpty "${OPTIONS[@]}"
