#!/bin/sh

for i in `ls`;
do
	if [ -f ./$i/.git ]; then
		nohup TortoiseGitProc.exe /command:pull /path:./$i/ /closeonend:2 >/dev/null 2>&1 &
	fi
done