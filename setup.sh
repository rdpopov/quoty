#!/bin/bash

grep -e "quoty" ~/.bashrc ||
echo '[[ -e ~/.config/quoty/ ]] && source $HOME/.config/quoty/quoty.sh  || echo "No quotes today sir"' >> ~/.bashrc
