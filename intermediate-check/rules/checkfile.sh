#!/bin/bash

file_exists="$([ -f ~/testfile ] && echo 'exists')"


cat << EOF
{
  "exists": "$file_exists"
}
EOF
