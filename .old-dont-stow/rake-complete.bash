function __rake_comp {
	debug=false
	old_COMP_WORDBREAKS=$COMP_WORDBREAKS
	COMP_WORDBREAKS="\"'@><=;|&("
#	echo
#	echo =================
#	echo COMP_CWORD = [$COMP_CWORD]
#	echo COMP_LINE = [$COMP_LINE]
#	echo COMP_POINT = [$COMP_POINT]
#	echo COMP_WORDBREAKS = [$COMP_WORDBREAKS]
#	echo COMP_WORDS = [$COMP_WORDS]
#	echo CC [${COMP_WORDS[COMP_CWORD]}]
#	echo WORD = [$WORD]
	RAKE=$1
	WORD=$2
#	echo =================
	to_complete=$(echo "$COMP_LINE" | sed 's/.* //' )
	base=$(echo $to_complete | sed -n 's/\(.*:\).*/\1/p')
#	echo CURRENT {$COMP_LINE} = [$to_complete]:$COMP_CWORD

	COMPREPLY=($(__rake_select 1 | grep "^$to_complete" | sed -n "s/^$base//p"))
#	echo $to_complete "<==" $base
#	echo ${COMPREPLY[@]} | tr ' ' '\n'
#	echo "==>"
#	echo [${COMP_WORDS[@]}] [${COMP_LINE}]
	COMP_WORDBREAKS=$old_COMP_WORDBREAKS
	
}

function __rake_list {
	(cd  $(__find_upfile Rakefile) ;
		make -f -<<EOM .Rakelist 1>/dev/null 2>/dev/null
.Rakelist:
	rake -T 2>&1 | cut -f 2 -d" " > .Rakelist
EOM
	tail +1 .Rakelist
	) 
}

function __rake_select
{
	__rake_list | cut -d : -f $1- | sort -u
}

function __find_upfile {
	local cwd="$(pwd)"
#	echo cwd=$cwd
	if [ $cwd == "/" ];
	then
		exit 1
	else
		if [ -a "$1" ];
		then
			pwd;
		else
			(cd ..; __find_upfile $1)
		fi
	fi
}
complete -F __rake_comp rake

