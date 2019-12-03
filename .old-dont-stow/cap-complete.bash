function __cap_comp {
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

	COMPREPLY=($(__cap_select 1 | grep "^$to_complete" | sed -n "s/^$base//p"))
#	echo $to_complete "<==" $base
#	echo ${COMPREPLY[@]} | tr ' ' '\n'
#	echo "==>"
#	echo [${COMP_WORDS[@]}] [${COMP_LINE}]
	COMP_WORDBREAKS=$old_COMP_WORDBREAKS
	
}

function __cap_list {
	(cd  $(__find_upfile Capfile) ;
		make -f -<<EOM .Caplist 1>/dev/null 2>/dev/null
.Caplist:
	cap -T 2>&1 | cut -f 2 -d" " > .Caplist
EOM
	tail +1 .Caplist
	) 
}

function __cap_select
{
	__cap_list | cut -d : -f $1- | sort -u
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
complete -F __cap_comp cap

