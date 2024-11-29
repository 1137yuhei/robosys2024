#!/bin/bash -xv


ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0


out=$(seq 10 | ./binary)
[ "${out}" = "0b1010" ] || ng "$LINENO"

out=$(seq 137 | ./binary)
[ "${out}" = "0b10001001" ] || ng "$LINENO"

out=$(echo あ | ./binary)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  "" | ./binary)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
