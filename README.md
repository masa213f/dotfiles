# My dotfiles

These are my dotfiles.

## Install dotfiles

Run this:

```
git clone https://github.com/masa213f/dotfiles.git ~/.dotfiles
cd ~/.dotfles
./scripts/setup.sh
```

## Install tools

### Go

Delete old version, if you need.

```
sudo rm -rf /usr/local/go
```

Download the archive and extract it into `/usr/local`.

```
curl -LO https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.1.linux-amd64.tar.gz
```

## ghq & peco

```
go get github.com/motemen/ghq
go get github.com/peco/peco/cmd/peco
```

### tmux

```
sudo apt install tmux
```

