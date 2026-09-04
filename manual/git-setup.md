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



### *Git init*

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
Check your keys:
```bash
ls -al ~/.ssh
```
Start the ssh-agent and add your key:
```bash
eval "$(ssh-agent -s)"
```
This should print something like "Agent pid 12345"
Then add your private key to it:
```bash
ssh-add ~/.ssh/id_ed25519
```
Display the public key content:
```bash
cat ~/.ssh/id_ed25519.pub
```
Copy that entire line.
Then:
1. Go to https://github.com/settings/keys
2. Click "New SSH key"
3. Give it a Title
4. Paste the copied key into the Key field
5. Click "Add SSH key"

Test the SSH connection to GitHub:
```bash
ssh -T git@github.com
```
The first time, you'll see a warning like:
> The authenticity of host 'github.com' can't be established...
> Are you sure you want to continue connecting (yes/no)?
Type yes and press Enter.

If everything works, you should see a message like:
> Hi your-username! You've successfully authenticated, but GitHub does not provide shell access.
link your local repo to GitHub. It looks like:
> git@github.com:username/repo-name.git
Then, inside your project folder in the terminal:
```bash
git remote add origin git@github.com:username/repo-name.git
```
This creates a "link" (named origin) between your local repo and the one on GitHub.

Verify it was added:
```bash
git remote -v
```
You should see:
> origin git@github.com:username/repo-name.git (fetch)
> origin git@githbu.com:username/repo-name.git (push)



### *Install GitHub CLI*

For arch linux:
```bash
sudo pacman -S github-cli
```
For debian
```bash
sudo apt install github-cli
```
For fedora
```bash
sudo dnf install github-cli
```
Verify installation:
```bash
gh --version
```
In case of error for CachyOS:
```bash
sudo cachyos-rate-mirrors
```
Authenticate GitHub CLI:
```bash
gh auth login
```
You'll go throuth an interactive prompt. Answer like this:
1. What account do you want to log into? -> GitHub.com
2. What is your preffered protocol for Git operations? -> SSH
3. Upload your SSH public key to your GitHub accoutn? -> "id_ed25519"
4. How would you like to authenticate GitHub CLI? -> Login with a we browser
After that you need to confirm a one-time code via your email.

Verify:
```bash
gh auth status
```

Now create a repository:
```bash
cd /path/to/your/folder
gh repo create
```
Verification:
```bash
git remote -v
```
You should see output similar to:
> origin git@github.com:your-username/your-repo-name.git (fetch)
> origin git@github.com:your-username/your-repo-name.git (push)
