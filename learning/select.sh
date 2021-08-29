#!/usr/bin/env bash

OPTIONS=('Docker' 'Git' 'PhpStorm' 'Node.js' 'npm' 'NVM')

PS3='Choose: '

#select option in ${OPTIONS[@]}; do
#  echo "Selected option: $option"
#  break
#done

select option in ${OPTIONS[@]}; do
  case $option in
  Docker)
    echo "Docker has been selected"
    ;;
  Git)
    echo "Git has been selected"
    ;;
  PhpStorm)
    echo "PhpStorm has been selected"
    ;;
  *)
    echo "Tech couldn't be selected"
    ;;
  esac

  break
done
