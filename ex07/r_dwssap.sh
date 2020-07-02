#!/bin/bash
cat /etc/passwd | sed -e '1,10d' | awk 'NR %2==0 ' |  sort -r | sed -n '$FT_LINE1,$FT_LINE2p'
