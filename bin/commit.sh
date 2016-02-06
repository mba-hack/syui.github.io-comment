#!/bin/zsh

d=${0:a:h:h}
cd $d/_posts
f=`zsh -c "ls -A"`
n=`echo "$f" | wc -l`
for (( i=1;i<=$n;i++ ))
do
	t=`echo "$f" | awk "NR==$i"`
	git add $t
	git commit -m "update"
done
git push
