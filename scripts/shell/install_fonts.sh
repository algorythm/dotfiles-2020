#!/usr/bin/env bash

fonts=( "fira-code" "inconsolata" )
taps=($(brew tap))

function ensure_tap() {
   tap=$1

   if [[ ! " ${taps[@]} " =~ " ${tap} " ]]; then
      echo -n '[🛠] Installing tap "'
      printf "\e[92m${tap}\e[0m"
      echo '"'
      brew tap ${tap}
   fi
}

ensure_tap 'homebrew/cask-fonts'
echo $?

echo "Will download ${#fonts[@]} fonts:"

for (( i=0; i<${#fonts[@]}; i++ )); do
   let cnt=$i+1
   echo -n "[☁️] Downloading $cnt/${#fonts[@]} \""
   printf "\e[92m${fonts[$i]}\e[0m"
   echo '"'

   brew install --cask font-${fonts[$i]}-nerd-font
   printf '\e[32m done ✓ \e[0m\n'
done
