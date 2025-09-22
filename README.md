# fedora-atomic
Fedora Atomic Desktop

<br>

### Atomic Update
```bash
sudo rpm-ostree upgrade
```

### Install RPM Fusion
```bash
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

### Install Packages
```bash
sudo rpm-ostree install -y distrobox steam-devices timeshift vim xclip zsh
```

### Install Flatpaks
```bash
wget -q -O ./flatpaks.txt
```
```bash
xargs flatpak install -y flathub < flatpaks.txt
```

---

### Configure ZSH
#### Install ZSH
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Install starship
```bash
curl -sS https://starship.rs/install.sh | sh
```

#### Configure startship
```bash
wget -q -O $HOME/.config/starship.toml 
```

#### Configure ZSH
```bash
wget -q -O $HOME/.oh-my-zsh/custom/custom.zsh
```

---

### Games
#### Configure Mangohud
```bash
flatpak override --user --filesystem=xdg-config/MangoHud:ro
```