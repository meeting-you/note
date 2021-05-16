#！/bin/bash
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

echo "安装插件"
gitbook install ./
echo "生成_book"
gitbook serve