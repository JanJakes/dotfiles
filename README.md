dotfiles
========

Installation on Ubuntu/OS X:
```
curl -L https://github.com/JanJakes/dotfiles/archive/master.tar.gz -o ~/dotfiles.tar.gz && tar -xzf ~/dotfiles.tar.gz -C ~/ && mv ~/dotfiles-master ~/dotfiles && rm ~/dotfiles.tar.gz && sh ~/dotfiles/linux.sh
```

Convert dotfiles to a git repository:
```
git init && git remote add origin git@github.com:JanJakes/dotfiles.git && git fetch --all && git reset --hard origin/master
```
