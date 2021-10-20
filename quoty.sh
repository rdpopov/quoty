#!bin/bash
quotes_file=~/.config/quoty/quotes
n_quotes=$(wc -l $quotes_file|cut -d" " -f1)
rand_quote=$(shuf -i 1-$n_quotes|head -n 1)
awk 'NR=='$rand_quote'{print$0}' quotes |sed 's/\\n/\n'/g| fold -s -w 60
echo
