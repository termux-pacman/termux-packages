#!/usr/bin/bash

# Set repo for auto push
read -p "Username: " username
read -sp "Key: " key
echo
git remote set-url origin "https://${username}:${key}@github.com/Maxython/termux-packages.git"

# Update repo
echo "==> Update repo."
git pull upstream master
git reset

# Sort file
echo "==> Sort and push packages."
for i in $(git status | grep packages/ | sed "s|modified:||g"); do
	file_sp=(${i//// })
	name=${file_sp[1]}
	echo "-> Package ${name}: ${i}."
	if [[ -n $old_name ]] && [[ $old_name != $name ]]; then
		echo "-> Push package ${old_name}."
		git commit -m "Update package ${old_name}"
		git push origin master
	fi
	git add $i
	old_name="$name"
done
echo "-> Push package ${old_name}."
git commit -m "Update package ${old_name}"
git push origin master

echo "==> Done."
