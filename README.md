# MacOS Settings

<br>

### Install Oh My Zsh!
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Homebrew Packages
```sh
curl -fsSL https://raw.githubusercontent.com/rbomfimpro/macos/main/Brewfile | brew bundle --file=-
```

<br>

### Warp Themes
**Link:** https://terminal-themes.com

#### Create Path
```sh
mkdir -p $HOME/.warp/themes
```

#### Install Themes
```sh
wget -q -P $HOME/.warp/themes/ https://github.com/rbomfimpro/macos/blob/main/warp-themes/<theme_file>.yaml
```