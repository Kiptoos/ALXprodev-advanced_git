ALXprodev-advanced_git/
├── README.md                         # empty file (Task 0)
├── README_WORKFLOW.md                # step-by-step commands (helper)
├── install-hooks.sh                  # copies hooks into .git/hooks (after git init)
├── hooks-samples/
│   ├── pre-commit                    # checks each top-level dir has README.md
│   └── post-merge                    # logs merges on main/master to .git/merge-log.txt
├── login-page/
│   └── README.md                     # "Login Feature Coming soon" (Task 1)
└── signup-page/
    └── README.md                     # final content incl. data requirements (Task 2)

# 1) Unzip and enter repo
unzip ALXprodev-advanced_git_scaffold.zip
cd ALXprodev-advanced_git

# 2) Initialize repo & push develop
git init
git remote add origin <your-github-url>
git checkout -b develop
git add .
git commit -m "chore: init repo with scaffold"
git push -u origin develop

# 3) Initialize git-flow (default settings)
git flow init -d

# 4) Install hooks
./install-hooks.sh
