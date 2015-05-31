#!/usr/bin/env rc

guide=$HOME/.local/piping.guide

if (test ! -e $guide){
	touch $guide
}

if (~ $#* 1 && ~ $1 -e){
	$EDITOR $guide
	exit
}

cmd=`{cat $guide | dmenu}

if (xsel -o | $cmd | xsel -i){
	if (! grep -q '^'^$"cmd^'$' $guide){
		echo $cmd >> $guide
	}
}
