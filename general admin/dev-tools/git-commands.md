# Git commands

Git is version handing software which is used for project versioning and syncronizing code between dev team members.
The most popular platforms for it are github, gitlab, bitbucket, etc.

## setup

1. download git software base from [link](https://git-scm.com/downloads)
2. Setup git in your favorite IDE

## Recurring commands

```git
git add -A
git commit
git push
```

#### To initiate a new repo

#### checkout commands

    - git checkout <branch>
          - To navigate between branches
    - git checkout -B <new_branch>
        - Creates the branch <new_branch> and start it at <start_point>; if it already exists, then reset it to <start_point>.

#### Commands involving branches

    - git merge <branch>
        - Merge current branch content with the specified branch content

    - git branch -l
        - List all git branches

## Exotic commands

#### to update files to be .gitignore complient

**PS: Make sure to save & commit all work beforehand!!!**
´´´
git rm -rf --cached .
git add .
´´´

### Git ignore example

.gitignore

```
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*
.idea
```

#### Links:

-   [[general-admin]]
