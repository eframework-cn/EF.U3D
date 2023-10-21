#!/bin/sh

if [ -d ./.git ] || [ -f ./.git ]; then
	nohup TortoiseGitProc.exe /command:pull /path:./ /closeonend:2 >/dev/null 2>&1 &
	if [ -f ./.gitmodules ]; then
		nohup TortoiseGitProc.exe /command:subupdate /path:./Packages/* /closeonend:2 >/dev/null 2>&1 &
	fi
else
	nohup TortoiseProc.exe /command:update /path:./ /closeonend:2 >/dev/null 2>&1 &
fi