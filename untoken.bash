#!/bin/bash
# sed -e 's/\[\([[:alphanum:]]+\) \([[:alphanum:]]+\) \([[:digit:]]+\) \([[:digit:]]+\)\]/\2/g'
#sed -e 's/\[\([%0-9A-Za-z]+\) +\([[%0-9A-Za-z]]+\) +\([0-9]+\) +\([0-9]+\)\]/\2/g'
sed -e 's/[a-z]*/x/g'
