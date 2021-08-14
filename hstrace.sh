#!/bin/bash
#set -x
cd "$(dirname "$0")" || exit

string_length=$(($(tput cols)-95))
return_col=$(($(tput cols)-55))
strace -t -f -C -s "$string_length" -y -a $return_col -o \
	>(source-highlight --failsafe --lang-def ./strace.lang -f esc --style-file=esc.style >&2 ) \
	"${@}"