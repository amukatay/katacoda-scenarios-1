#!/bin/bash

file_exists="$([ -f ~/testfile1 ] && echo 'exists')"


cat << EOF
{
  "results": {  "exists": "$file_exists" }
}
EOF