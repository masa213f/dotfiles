# My dotfiles

These are my dotfiles.

## Install dotfiles

Run as follows:

```console
$ git clone https://github.com/masa213f/dotfiles.git
$ cd dotfles
$ ./scripts/setup.sh
# Then dotfiles are linked as follows:
# ln -sf /<path to workdir>/dotfiles/_vimrc /home/<user>/.vimrc
# ln -sf /<path to workdir>/dotfiles/_gitconfig /home/<user>/.gitconfig
# ln -sf /<path to workdir>/dotfiles/_gitignore.global /home/<user>/.gitignore.global
# ln -sf /<path to workdir>/dotfiles/_bashconf /home/<user>/.bashconf
# ln -sf /<path to workdir>/dotfiles/_tmux.conf /home/<user>/.tmux.conf
```

Add the following code to `~/.bashrc`.

```bash
if [ -e ~/.bashconf ]; then
  . ~/.bashconf
fi
if [ -e ~/.bashconf.local ]; then
  . ~/.bashconf.local
fi
```

Create `~/.gitconfig.local` for git username and mail address.

```console
$ vi ~/.gitconfig.local
# Write git username and mail address as follows:
# [user]
#   name = User Name
#   email = mail-address@example.com
```

## Install tools

### Go

Delete old version, if you need.

```bash
sudo rm -rf /usr/local/go
```

Download the archive and extract it into `/usr/local`.

```bash
curl -LO https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.1.linux-amd64.tar.gz
```

## ghq & peco

```bash
go get github.com/motemen/ghq
go get github.com/peco/peco/cmd/peco
```

### tmux

```bash
sudo apt install tmux
```
