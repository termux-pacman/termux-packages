#!/usr/bin/bash

info() {
	echo -e "\033[1;36m\n==> $1\033[0m"
}

commet() {
	echo -e "\033[0;32m-> $1\033[0m"
}

# Set repo for auto push
read -p "Username: " username
read -sp "Key: " key
echo
git remote set-url origin "https://${username}:${key}@github.com/Maxython/termux-packages.git"

# Update repo
info "Update repo."
git pull upstream master
commet "Continue?"
git status
select yn in "Yes" "No"; do
	case $yn in
		Yes ) break;;
		No ) exit 1;;
	esac
done
git reset

# Sort file
info "Sort and push packages."
for i in $(git status | grep packages/ | sed "s|modified:||g"); do
	file_sp=(${i//// })
	name=${file_sp[1]}
	commet "Package ${name}: ${i}."
	if [[ -n $old_name ]] && [[ $old_name != $name ]]; then
		commet "Push package ${old_name}."
		git commit -m "Update package ${old_name}"
		git push origin master
	fi
	git add $i
	old_name="$name"
done
commet "Push package ${old_name}."
git commit -m "Update package ${old_name}"
git push origin master

git remote set-url origin "https://github.com/Maxython/termux-packages"

info "Done."
