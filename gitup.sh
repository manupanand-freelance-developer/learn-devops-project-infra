git add .
echo commit for ?
read commit
git commit -m "$commit"
git push origin main
