# Neovim setup

## Install neovim
```
wget https://github.com/neovim/neovim/releases/download/v0.9.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64
sudo cp nvim-linux64 /opt/
ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/
```

## Get NVChad configs
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

## Add custom plugins
```
cd .config/nvim
git submodule add -f git@github.com:dominic4810/nvchad_config.git lua/custom
```

## Setup github-copilot
```
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

In nvim, run:
```
:Copilot setup
```

