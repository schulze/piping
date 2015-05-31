piping
=====

Piping is meant to bring a tiny little bit of
[acme](http://plan9.bell-labs.com/sys/doc/acme/acme.html) to the rest of my desktop.

The script takes the content of the primary selection, pipes it through a program and copies
the output back into the selection. It currently uses [dmenu](http://tools.suckless.org/dmenu/)
to decide which program to use and remembers past choices in a local file.

It can, for example, be used to pipe text typed in a browser through `fmt` or text typed in
a simple editor through `aspell -l`.  One can also pipe a filename to `xargs B` to plumb the
file to acme or sam.

The usage is quite simple:

	$ pp

opens a `dmenu` window to type in the name of the program to use in the pipeline.

	$ pp -e

opens the guide file with previous choices in $EDITOR.
