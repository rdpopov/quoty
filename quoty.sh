#!bin/sh
quotes_file=~/.config/quoty/quotes
n_quotes=$(wc -l $quotes_file|cut -d" " -f1) 
rand_quote=$(( ( RANDOM % $n_quotes )  + 1 ))
echo -e "\n\033[3m$(head -n $rand_quote $quotes_file|tail -n 1|fold -s -w 60 )\033[0m\n"
