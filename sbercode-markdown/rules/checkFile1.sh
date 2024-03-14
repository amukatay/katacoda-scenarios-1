#!/bin/bash

file_exists="$([ -f ~/testfile1 ] && echo 'exists')"


cat << EOF
{
  "exists": "$file_exists"
}
EOF
