# Refresh the package cache and update the system 
sudo pacman -Syu

# Install VMWare Support
sudo pacman -S open-vm-tools

# Install prerequisites if not installed (--needed)
sudo pacman -S --needed base-devel git

# Build yay package
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..

# Install and run hyprland config
git clone https://github.com/SolDoesTech/hyprland.git
cd hyprland
chmod +x set-hypr
./set-hypr
