# Environment setup
Repo containing most common tools and how to set then up.

# Delete merged branches
Deletes local branches already merged into current branch.

```sh
git branch --merged | egrep -v "(^\*|main|develop)" | xargs git branch -d
```
