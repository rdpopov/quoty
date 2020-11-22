#!bin/bash
quotes_file=~/.config/quoty/quotes
n_quotes=$(wc -l $quotes_file|cut -d" " -f1)
rand_quote=$(shuf -i 1-$n_quotes|head -n 1)
echo "\n\033[3m$(head -n $rand_quote $quotes_file|tail -n 1|fold -s -w 60 )\033[0m\n"
