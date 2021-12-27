#!/usr/bin/bash

info() {
	echo -e "\033[1;36m\n==> $1\033[0m"
}

commet() {
	echo -e "\033[0;32m-> $1\033[0m"
}

list_pkg() {
	local list
	for i in $(git status -s packages | awk '{print $2}'); do
		local dir_sp=(${i//// })
		if [[ ! $(echo "$list" | grep "/${dir_sp[1]} ") ]]; then
			list+="packages/${dir_sp[1]} "
		fi
	done
	echo $list
}

# Set repo for auto push
read -p "Username: " username
read -sp "Key: " key
echo
git remote set-url origin "https://${username}:${key}@github.com/Maxython/termux-packages-pacman.git"

# Sort file
info "Sort and push packages."
for i in $(list_pkg); do
	commet "${i}"
	git add $i
	git commit -m "${i}"
	git push origin master
done

git remote set-url origin "https://github.com/Maxython/termux-packages-pacman.git"

info "Done."
