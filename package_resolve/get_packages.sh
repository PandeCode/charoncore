#!/bin/sh

function main () {

	# pacman -Qeq > _all.txt
	# pacman -Qmeq > _aur.txt
    #
	# sort _all.txt > all.txt
	# sort _aur.txt > aur.txt
    #
	# rm _all.txt _aur.txt
    #
	# comm -23 all.txt aur.txt > only_repos.txt
    #
	# cat essential.txt only_repos.txt | sort | uniq > final.txt
	cat essential.txt default.txt | sort | uniq > final.txt

	cp -r final.txt ../packages.x86_64
}

main
