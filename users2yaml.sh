#! /bin/bash
echo "---"
while read line
do
	username=$(echo $line | cut -d ":" -f 1)
	groupid=$(echo $line | cut -d : -f 4)
	password=$(sudo grep "^$username" /etc/shadow | cut -d ':' -f 2)

	echo "- username: $username"
	echo "  password: \"$password\""
	echo "  groupid: $groupid"
done </etc/passwd
