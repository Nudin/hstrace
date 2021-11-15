hstrace
=======

A tiny wrapper around `strace` giving colored output and more user friendly defaults.

- Color output using source-highlight
- Increase string length to a value matching the terminal width (-s …)
- Decode fd's to filenames (-y)
- Enable timestamps (-t)
- Include subproceses (-f)
- Enable statistics at command end (-C)
- Align return codes (-a …)

Example:
`strace ls`
![strace](strace.png)

`hstrace ls`
![hstrace](hstrace.png)

Dependencies, Usage
-------------------
Make sure you have source-highlight, tput and strace installed.
Call `hstrace.sh` just as you would call strace.

To install it system wide, I recommend something like:
```
# git clone https://github.com/Nudin/hstrace /opt/hstrace
# ln -s /opt/hstrace/hstrace.sh /usr/local/bin/hstrace
```
