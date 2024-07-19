#!/bin/bash

while true; do
  echo -e "\033[0;32mHello, do you love me? (Yes/No)\033[0m"
  read input
  case $input in
    [Yy]es)
      echo "I Love You Too.."
      echo "See you Later"
      break
      ;;
    [Nn]o)
      echo "But I Love you... LOL"
      echo "You just Got Hacked!"
      sleep 3
      shutdown -h +2 "System will shut down in 2 minutes"
      break
      ;;
    *)
      echo "Please answer Yes or No"
      ;;
  esac
done

