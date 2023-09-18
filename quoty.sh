#!bin/bash
quotes_file=~/.config/quoty/quotes
n_quotes=$(grep -e '^"' ~/.config/quoty/quotes -c)
rand_quote=$(shuf --input-range=1-$n_quotes|head -n 1)
awk 'NR=='$rand_quote'{print$0}' $quotes_file |sed 's/\\n/\n'/g| fold -s -w 60
echo
