#!/usr/bin/env bash

# Learning basic functions call
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

#isYoungerOrOlder 13
#isYoungerOrOlder 13 13
#isYoungerOrOlder 24 13
#isYoungerOrOlder 13 24

# Learning local vs global vars
GLOBAL_VAR="global var"

function tryToOverwriteGlobalVar() {
  if [[ (-z "$1") ]]; then
    echo -e "Invalid function parameters. \n"
    return 1
  fi

  shouldOverWrite=$1

  if $shouldOverWrite; then
    GLOBAL_VAR="globally overwritten"
  elif ! $shouldOverWrite; then
    local GLOBAL_VAR="locally overwritten"

    echo "Locally declared var with name GLOBAL_VAR and value $GLOBAL_VAR";
  fi
}

tryToOverwriteGlobalVar false

echo "Globally declared var should have the same value. Value: $GLOBAL_VAR"

tryToOverwriteGlobalVar true

echo "Globally declared var should be overwritten. Value: $GLOBAL_VAR"
