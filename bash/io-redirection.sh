#!/bin/bash

## References
# 1. http://www.tldp.org/LDP/abs/html/io-redirection.html
# 2. http://hacktux.com/bash/socket

file="test.txt"
echo 1234123123 > "$file"

exec 3<> "$file"

read -n 4 <&3
echo -n . >&3
exec 3>&-
cat "$file"
