echo "<---git status"
git status
echo "git status--->"
read -p "input ur comment: " comment
echo "Ur comment is $comment"
git add .
git commit -m "$comment"
git push
echo "FINISHED"
read
# nohup