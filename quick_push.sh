read -p "Plz input your comment: " comment
echo "Your comment is $comment"
git add .
git commit -m "$comment"
git push