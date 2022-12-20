#/system/etc/bash/bashrc

export HOME=/data
export HOST=$(getprop ro.product.device)
export HOSTNAME=$HOST-android
export TERM=xterm-256
export TMPDIR=/data/local/tmp
export USER=$(id -un)
export PREFIX=/system
export SHELL=/system/bin/bash
export SH=/system/bin/bash
export PATH="/bin:/system/bin:/system/vendor/bin"

alias ls='/system/bin/ls --color=auto'
alias ps='/system/bin/ps'


if (( USER_ID )); then PS1='$'; else PS1='#'; fi
PS4='[$EPOCHREALTIME] '; PS1='${|
	local e=$?

	(( e )) && REPLY+="$e|"

	return $e
}$USER@$HOSTNAME:${PWD:-?} '"$PS1 "


if [[ $- != *i* ]] ; then
	return
fi

shopt -s checkwinsize
shopt -s histappend

# enable colorful terminal

if [[ ${EUID} == 0 ]] ; then
	PS1='\[\033[01;31m\]${HOSTNAME:=$(hostname)}\[\033[01;34m\] \W \$\[\033[00m\] '
else
	PS1='\[\033[01;32m\]${USER:=$(id \-un)}@${HOSTNAME:=$(hostname)}\[\033[01;34m\] \w \$\[\033[00m\] '
fi

function hd {
	local -Uui16 -Z11 pos=0
	local -Uui16 -Z5 hv=2147483647
	local dasc line i

	cat "$@" | { set +U; if read -arN -1 line; then
		typeset -i1 'line[*]'
		i=0
		while (( i < ${#line[*]} )); do
			hv=${line[i++]}
			if (( (pos & 15) == 0 )); then
				(( pos )) && print -r -- "$dasc|"
				print -n "${pos#16#}  "
				dasc=' |'
			fi
			print -n "${hv#16#} "
			if (( (hv < 32) || (hv > 126) )); then
				dasc+=.
			else
				dasc+=${line[i-1]#1#}
			fi
			(( (pos++ & 15) == 7 )) && print -n -- '- '
		done
		while (( pos & 15 )); do
			print -n '   '
			(( (pos++ & 15) == 7 )) && print -n -- '- '
		done
		(( hv == 2147483647 )) || print -r -- "$dasc|"
	fi; }
}

function setenv {
	eval export "\"$1\""'="$2"'
}


for p in ~/bin; do
	[[ -d $p/. ]] || continue
	[[ :$PATH: = *:$p:* ]] || PATH=$p:$PATH
done

unset p


