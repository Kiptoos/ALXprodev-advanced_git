# Git-Flow Task Helper

## Initial setup
```bash
git init
git remote add origin <your-github-url>
git checkout -b develop
git push -u origin develop
git flow init -d
```
## Feature branches
```bash
git flow feature start implement-login
mkdir -p login-page
echo "Login Feature Coming soon" > login-page/README.md
git add login-page/README.md
git commit -m "feat: scaffolding login page"
git push -u origin feature/implement-login
git flow feature finish implement-login
git push origin develop
```
## Second feature and merge
```bash
git flow feature start implement-signup
mkdir -p signup-page
echo "feature coming soon" > signup-page/README.md
git add signup-page/README.md
git commit -m "feat: scaffolding signup page"
git push -u origin feature/implement-signup
git checkout develop
git merge --no-ff feature/implement-login
git merge --no-ff feature/implement-signup
git push origin develop
```
## Release branch
```bash
git flow release start 1.0.0
echo -e "feature coming soon

data requirements: email, firstName, lastName, profilePic" > signup-page/README.md
git add signup-page/README.md
git commit -m "chore(release): update signup data requirements"
git flow release finish 1.0.0
git push origin main develop
git tag v1.0.0
git push origin --tags
```
## Install hooks
```bash
./install-hooks.sh
```
