#!/bin/bash
cd ~/scripts/

# Loop Through Files
for file in *.sh; do
	# Find Base Name
	base=$(basename $file)

	# Find File Name
	filename=${base%.*}

	# Ignore Self
	if [ "$filename" == "daemon" ]; then
		echo "[$filename] Skipped"
		continue
	fi

	# Check For Stop File
	if [ -e $filename.stop ]; then
		echo "[$filename] Blocked"
		continue
	fi

	# Check For Screen Session
	if [ -e /var/run/screen/S-$(whoami)/*.$filename ]; then
		echo "[$filename] Running"
		continue
	fi

	# Execute Daemon
	echo "[$filename] Started"
	bash $file
done
