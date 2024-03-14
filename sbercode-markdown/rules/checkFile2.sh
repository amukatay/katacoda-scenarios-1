#!/bin/bash

file_exists="$([ -f ~/testfile2 ] && echo 'exists')"


cat << EOF
{
  "results": {  "exists": "$file_exists" }
}
EOF