sudo apt install neovim 






putgitrepo() { # Downlods a gitrepo $1 and places the files in $2 only overwriting conflicts
	#dialog --infobox "Downloading and installing config files..." 4 60
	dir=$(mktemp -d)
	[ ! -d "$2" ] && mkdir -p "$2" && chown -R "$name:pi" "$2"
	chown -R "$name:pi" "$dir"
	sudo -u "$name" git clone --depth 1 "$1" "$dir/gitrepo" >/dev/null 2>&1 &&
	sudo -u "$name" cp -rfT "$dir/gitrepo" "$2"
	}


name=$(whoami)
dotfilesrepo="git@github.com:mbarakatt/dotfiles-kh5.git"
putgitrepo "$dotfilesrepo" "/home/$name"

