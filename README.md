# my_env_files

## Install Homebrew

```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install coreutils curl git
sudo xcode-select --install
```

## Install iTerm2

```console
brew install --cask iterm2
```

Change to iterm2.

## Install Oh My Zsh

```console
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install Powerlevel10k

```console
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Open the ”~/.zshrc” and change the value of "ZSH_THEME"

```console
ZSH_THEME="powerlevel10k/powerlevel10k"
```

```console
source ~/.zshrc
```

## Install Meslo Nerd Font

Install the font by pressing “y” and then quit iTerm2.

## Configure Powerlevel10k

```console
p10k configure
```

## Change iTerm2 Colors to My Custom Theme

1. Open iTerm2
2. Open iTerm2 preferences
3. Go to Profiles > Colors
4. Import the downloaded color profile (coolnight)
5. Select the color profile (coolnight)

## Install asdf

```console
brew install asdf

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
```

## Install ZSH Plugins

```console
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Open the ”~/.zshrc” file in your desired editor and modify the plugins line to what you see below.

```console
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
```

```console
source ~/.zshrc
```

## Install eza & diff-so-fancy

```console
brew install eza
echo -e "\nalias ls='eza'" >> ~/.zshrc
brew install diff-so-fancy
echo -e "\nalias diff='diff-so-fancy'" >> ~/.zshrc
source ~/.zshrc
```

## Install Tmux

```console
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf
```

## Install Yabai & Skhd

```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
cp -r .config/yabai ~/.config/yabai
cp -r .config/skhd ~/.config/skhd
brew services start yabai
brew services restart yabai
brew services start skhd
brew services restart skhd
```

## Install NeoVim

```console
brew install neovim
brew install ripgrep
xcode-select --install
cp -r .config/nvim ~/.config/nvim
echo -e "\nalias vim='nvim'" >> ~/.zshrc
```
