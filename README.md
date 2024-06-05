# dev-setup
Contain config for dev workflow (zsh, tmux, nvim, git, ...)

## Install zsh shell
Use zsh shell (with oh-my-zsh) instead of bash shell. It has auto complement command base on your history

> sudo apt update
> sudo apt install zsh -y

Change zsh to default shell
> chsh -s $(which zsh)

## Install homebrew 
https://docs.brew.sh/Homebrew-on-Linux

> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
> echo "eval \"\$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)\"" >> ~/.zshrc

## Install git (auto install curl)
> brew install git

## Install oh-my-zsh
> sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Install git, delta for git diff
> brew install git
> brew install git-delta

## Install powerlevel10k theme for oh-my-zsh
> git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

Config ZSH_THEME in ~/.zshrc file: **ZSH_THEME="powerlevel10k/powerlevel10k"**

Config p10k with your style
> p10k configure

## Install zsh plugins
> git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
> git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Config ~/.zshrc file: **plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)**

Note: Every time change config ~/.zshrc file, we need run:
> source ~/.zshrc

## Install neovim
> brew install neovim

## Install build tools (C compiler for nvim-treesitter plugin)
> sudo apt update && sudo apt install build-essential -y

## Install nerd font
> mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf && fc-cache -fv

Note: May need reboot after install

## Install fzf
> brew install fzf

## Install ripgrep and fd for find file and string
> brew install ripgrep && brew install fd

## Install node, python, golang, lua, luarocks
Note: Install node will install python too
> brew install node && brew install go && brew install lua && brew install luarocks

## Install lazygit
> brew install lazygit

## Clone thisrepo and copy some config (or symlink to sync config from repo)
- .config/nvim
- .config/git
- .config/lazygit

Note: You can stuck with error: https://stackoverflow.com/questions/77435038/what-did-i-do-wrong-with-my-neovim-telescope-config => see solution2, trigger build fzf-native in Lazy

## Install tmux
> brew install tmux

Install tmux plugin manager

> git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Copy .tmux.conf file to ~/.tmux.conf

Reload config
> tmux source-file ~/.tmux.conf

Install plugin
> <prefix> I
# TODO: write bash script


# SRE/DevOps setup tools
kubectl, krew, k9s, helm, helmfile, terraform, ansible, gcloud, cmctl (cert manager ctl), ...
