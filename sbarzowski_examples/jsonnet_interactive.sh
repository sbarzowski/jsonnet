#!/bin/bash
INPUT="$1"
shift 1
inotifywait -m "$INPUT" | cat
#  while read x y z; do
#    echo EXEC $x $y $z:
#    ./jsonnet "$@" - < "$INPUT"
#  done
