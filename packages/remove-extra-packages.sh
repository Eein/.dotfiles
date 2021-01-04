yay -Rsu $(comm -23 <(yay -Qq | sort) <(sort pkglist.txt))
