# Environment setup
Repo containing most common tools and how to set then up.

# Delete merged branches
Deletes branches already merged.

```sh
# Local branches only
git branch --merged | egrep -v "(^\*|main|dev)" | xargs git branch -d
```

```sh
# Remote branches only
git branch -r --merged | grep -v -E "main|dev" | sed 's/origin\//:/' | xargs -n 1 git push origin
```
