date=$(date +%Y-%m-%d)
echo -n "Title: "
read title
titlef=$(echo $title | sed "s/ /-/g")
if [ ! $EDITOR ]; then
	EDITOR=vim
fi

mkdir -p _posts
post="_posts/${date}-${titlef}.md"
echo   "---"           > "$post"
printf "title: %s\n"  >> "$post"
echo   "layout: post" >> "$post"
echo   "---"          >> "$post"
echo                  >> "$post"
$EDITOR "$post"
#git add "$post"
#git commit -m "Post: ${title}"
#git push
