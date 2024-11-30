#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Yuhei Mitsuno
# SPDX-License-Identifier: BSD-3-Clause


ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0


out=$(echo 10 | ./binary)
[ "${out}" = "0b1010" ] || ng "$LINENO"

out=$(echo 137 | ./binary)
[ "${out}" = "0b10001001" ] || ng "$LINENO"

out=$(echo 256 | ./binary)
[ "${out}" = "0b100000000" ] || ng "$LINENO"

out=$(echo -10 | ./binary)
[ "${out}" = "-0b1010" ] || ng "$LINENO"

out=$(echo -137 | ./binary)
[ "${out}" = "-0b10001001" ] || ng "$LINENO"

out=$(echo -256 | ./binary)
[ "${out}" = "-0b100000000" ] || ng "$LINENO"

out=$(echo あ | ./binary)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  "" | ./binary)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res

