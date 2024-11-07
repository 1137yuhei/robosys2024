#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NOMAL INPUT ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINEMO"

[ "${res}" = 0 ] && echo OK
exit "$res"
