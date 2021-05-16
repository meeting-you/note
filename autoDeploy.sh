#！/bin/bash
#curPath =  $(pwd)
#echo $curPath
echo "提交"
git commit -asm "auto commit"
git push origin main

rm -rf doc
mkdir doc
cp -R gbook/ doc/
sh gitalk.sh
git add .
git commit -asm "auto commit"
git push origin main

echo "删除旧_book目录"
rm -rf /var/gitbook/_book/gitbook_test
mkdir -p /var/gitbook/_book/gitbook_test
echo "安装插件"
gitbook install ./
echo "生成_book"
gitbook build
echo "拷贝"
cp -R ../gitbook_test/_book /var/gitbook/_book/gitbook_test
echo "切换分支"
git checkout page
sleep 2
echo "删除旧文件"
shopt -s extglob
rm -rf !(.idea | .gitignore)
echo "恢复"
cp -R /var/gitbook/_book/gitbook_test/_book/* ../gitbook_test/
sleep 2
echo "提交page"
git add .
git commit -asm "autocommitpage" && git push origin page
sleep 2
echo "check main"
git checkout main