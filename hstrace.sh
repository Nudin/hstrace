#!/bin/bash
#set -x
if type realpath > /dev/null; then
	cd "$(dirname "$(realpath "$0")")" || exit
elif uname -s | grep -qsi darwin; then
	cd "$(dirname "$(readlink "$0")")" || exit
else
	cd "$(dirname "$(readlink -f "$0")")" || exit
fi

string_length=$(($(tput cols)-95))
return_col=$(($(tput cols)-55))
strace -t -f -C -s "$string_length" -y -a $return_col -o \
	>(source-highlight --failsafe --lang-def ./strace.lang -f esc --style-file=esc.style >&2 ) \
	"${@}"
