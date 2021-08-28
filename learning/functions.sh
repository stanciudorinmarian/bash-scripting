#!/usr/bin/env bash

function isYoungerOrOlder() {
  if [[ (-z "$1") || (-z "$2") ]]; then
    echo -e "Invalid function parameters. \n"
    return 1
  fi

  firstAge="$1"
  secondAge="$2"

  echo -e "First person is $firstAge and the second one is $secondAge."

  if [ $firstAge -lt $secondAge ]; then
    echo -e "First person is younger than the second one.\n"
    return 0
  fi

  if [ $firstAge -gt $secondAge ]; then
    echo -e "First person is older than the second one.\n"
    return 0
  fi

  echo -e "They are the same age.\n"
}

isYoungerOrOlder 13
isYoungerOrOlder 13 13
isYoungerOrOlder 24 13
isYoungerOrOlder 13 24
