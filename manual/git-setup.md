### *Install git on system*

For arch linux:
```bash
sudo pacman -S git
```
For debian
```bash
sudo apt install git
```
For fedora
```bash
sudo dnf install git
```



### *Git configuration*

username and user email:
```bash
git config --global user.name "your name"
git config --global user.email "your email"
```
checking configs:
```bash
cat ~/.config
```



### *Git init

```bash
cd /path/to/your/folder
git init
```
checking result:
```bash
git status
```
rename current branch:
```bash
git branch -m main
```
verify the default branch settings:
```bash
git config --global --get init.defaultBranch
```
This should print main, confirming that all future git init commands will start with main by default.



### *Set up SSH*

Check if you already have an SSH key:
```bash
ls -al ~/.ssh
```
If no key, then generate a new SSH key:
```bash
ssh-keygen -t ed25519 -C "your email"
```
Then press Enter 3 times. 
