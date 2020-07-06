#!/bin/bash
cat /etc/passwd | sed -e '1,10d' | awk 'NR %2==0 ' | rev | cut -d ':' -f 7 | sort -r | sed -n ''"$FT_LINE1"','"$FT_LINE2"'p' | tr '\n' ',' | sed 's/,/, /g' | sed 's/, $/./g' | tr -d '\n'
