# Fetch all remote branches
git fetch --all

# Create and checkout local branches for all remote branches
for branch in $(git branch -a | grep 'remotes' | grep -v HEAD | cut -d '/' -f3); do
	git checkout -b $branch origin/$branch
done
