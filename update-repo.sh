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
		if [[ ! $(echo $list | grep "${dir_sp[1]} ") ]]; then
			list+="packages/${dir_sp[1]} "
		fi
	done
	echo $list
}

# Update repo
info "Update repo."
git config pull.rebase false
git fetch --all
git pull upstream master
commet "Continue?"
git status
select yn in "Yes" "No"; do
	case $yn in
		Yes ) break;;
		No ) exit 1;;
	esac
done

# Set repo for auto push
read -p "Username: " username
read -sp "Key: " key
echo
git remote set-url origin "https://${username}:${key}@github.com/Maxython/termux-packages.git"
git reset

# Edit file
for i in $(grep -l ">>>>>>>" packages/*/*); do
	rm $i
	wget -O $i https://raw.githubusercontent.com/termux/termux-packages/master/$i
done

# Sort file
info "Sort and push packages."
for i in $(list_pkg); do
	commet "${i}"
	git add $i
	git commit -m "${i}"
	git push origin master
done

git remote set-url origin "https://github.com/Maxython/termux-packages"

info "Done."
