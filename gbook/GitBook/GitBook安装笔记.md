# GitBook安装笔记
## Mac安装
```
安装nodejs
brew install node

淘宝加速
npm install -g cnpm --registry=https://registry.npm.taobao.org

安装GitBook
npm install -g gitbook-cli

查看
gitbook --version
```
## GitBook使用
```
构建
gitbook build

本地测试
gitbook serve

访问
http://localhost:4000/
```

## 自动GitHub代码
> 要求：
> 1. 主分支为main
> 2. 展示分支为page
> 3. 对/var/gitbook/_book 目录有读写权限
```
#！/bin/bash
#curPath =  $(pwd)
#echo $curPath
echo "提交"
git commit -asm "auto commit"
git push origin main
# 删除重建 doc
rm -rf doc
mkdir doc
cp -R gbook/ doc/
sh gitalk.sh
git add .
git commit -asm "auto commit"
git push origin main
# 删除旧的缓存目录重建
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
```