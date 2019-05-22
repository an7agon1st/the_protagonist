rm -rf docs
cp CNAME ./build/
mv build docs
echo deployment ready
sleep 5
git add docs
git commit -m "Test Deploy"
echo git commited, preparing to push
sleep 1
echo .
sleep 1
echo .
sleep 1
echo pushing
sleep 1
git push origin master
