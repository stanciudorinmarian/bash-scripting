#!/usr/bin/env bash

# trap user inside a selector by ignoring carriage return
stty igncr

PS3="Choose: "

select option in 'Docker' 'Git' 'PhpStorm' 'Node.js' 'npm' 'NVM';
do
  echo "Selected option: $option"
  break
done
