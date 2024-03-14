#!/bin/bash

file_exists="$([ -f ~/testfile ] && echo 'exists')"


cat << EOF
{
  "results": {  "exists": "$file_exists" }
}
EOF