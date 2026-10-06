# Arch Linux Setup

## 1. Install packages

```bash
sudo pacman -S --needed - < packages.txt
```

## 2. Install oxwm

```bash
# If using yay
yay -S oxwm-git

# Or build manually
git clone https://aur.archlinux.org/oxwm-git.git /tmp/oxwm-git
cd /tmp/oxwm-git && makepkg -si
```

## 3. Deploy dotfiles

```bash
git clone <repo-url> ~/oxwmdots
cd ~/oxwmdots
stow */
```

## 4. Initialize directories

```bash
xdg-user-dirs-update
```

## 5. Start session

```bash
startx
```
