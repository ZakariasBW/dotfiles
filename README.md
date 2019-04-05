<!---
```bash
    git init --bare $HOME/.dotfiles
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    dotfiles config --local status.showUntrackedFiles no
    echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```
--->

### Setup new machine

**Mac OSx:**

wip install script not done

```
bash <(curl -s https://raw.githubusercontent.com/ZakariasBW/dotfiles/macOS/install.sh)
```

**Ubuntu:**

```
bash <(wget -qO- https://raw.githubusercontent.com/ZakariasBW/dotfiles/master/install.sh)
```

**Raspberry pi:**

```
bash <(wget -qO- https://raw.githubusercontent.com/ZakariasBW/dotfiles/master/install.sh)
```
<!---
```bash
    git clone --separate-git-dir=$HOME/.dotfiles https://github.com/ZakariasBW/dotfiles.git
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    dotfiles config --local status.showUntrackedFiles no
    echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
    rm -r $HOME/dotfiles
```
--->
