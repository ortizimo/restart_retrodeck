#!/bin/bash
echo "RETRODECK RELOAD!"
program_name="retrodeck reload"
program_path="/usr/bin/flatpak"
program_args="run --branch=stable --arch=x86_64 net.retrodeck.retrodeck"

while true; do
	echo "Restarting $program_path..."
	"$program_path" $program_args
	program_exit_status=$?

	if [ $program_exits_status -eq 0 ]; then 
		echo "$program_path exited normally. Restarting..."
	else
		echo "$program_path exited with error status $program_exit_status. Restarting..."
	fi
	sleep 1
done
