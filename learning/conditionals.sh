#!/usr/bin/env bash

JOHN_AGE=23
DOE_AGE=24

#if [[ $JOHN_AGE -eq $DOE_AGE ]]; then
#  echo "John and Doe are the same age."
#fi
#
#if [[ $JOHN_AGE -gt $DOE_AGE ]]; then
#  echo "John is older than Doe."
#fi
#
#if [[ $JOHN_AGE -lt $DOE_AGE ]]; then
#  echo "John is younger than Doe."
#fi
#
#if [[ $JOHN_AGE -le $DOE_AGE ]]; then
#  echo "John is younger or has same age with Doe."
#fi
#
#if [[ $JOHN_AGE -ge $DOE_AGE ]]; then
#  echo "John is older or has same age with Doe."
#fi

if (( $JOHN_AGE == $DOE_AGE )); then
  echo "John and Doe are the same age."
fi

if (( $JOHN_AGE > $DOE_AGE )); then
  echo "John is older than Doe."
fi

if (( $JOHN_AGE < $DOE_AGE )); then
  echo "John is younger than Doe."
fi

if (( $JOHN_AGE <= $DOE_AGE )); then
  echo "John is younger or has same age with Doe."
fi

if (( $JOHN_AGE >= $DOE_AGE )); then
  echo "John is older or has same age with Doe."
fi
