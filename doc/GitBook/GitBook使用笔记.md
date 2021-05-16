
# GitBook使用笔记
> GitBook使用很简单

## 目录结构
```
1. README.md //初始化文档，生成介绍说明
2. SUMMARY.md // 目录 * [GitBook笔记](GitBook/README.md)，多级目录用tab键分隔
3. 书写内容用Markdown
```
## Markdown
### 表格
title1 | title2 | title3
 --- | --- | --- 
1  |  2  |  3
### ~~gitbook不支持Markdown的toc自动生成目录~~
```
参考：https://blog.csdn.net/u012887259/article/details/102425695
脚本地址：https://raw.githubusercontent.com/ekalinin/github-markdown-toc/master/gh-md-toc
使用方式：
sh ../../gh-md-toc.sh ghMdTocTest.md
拷贝打印的到文件任意处即目录：
* [一级标题](#一级标题)
   * [1. 二级标题](#1-二级标题)
   * [2. 二级标题2](#2-二级标题2)
* [第二个一级标题](#第二个一级标题)
```
### 插件参考
> [参考地址](https://segmentfault.com/a/1190000019806829)  
> [参考地址2](https://blog.csdn.net/hiwoshixiaoyu/article/details/89305063)  

### 评论插件
> [参考地址](https://segmentfault.com/a/1190000018072952)  
> [js地址](https://www.bootcdn.cn/gitalk/)
```
上面评论插件不实用：
参考：https://zhuanlan.zhihu.com/p/136192511
{
    "plugins": ["valine"],
    "pluginsConfig": {
        "valine": {
            "appId": "your appId",
            "appKey": "your appKey"
        }
    }
}
```
#### Valine
> [文档](https://valine.js.org/quickstart.html)  
> [管理台](https://console.leancloud.cn/apps/MXlWv0YbTYDe5E96Vstx7j13-gzGzoHsz/settings/general)  
> [价格及限制](https://www.leancloud.cn/pricing/index.html)

<script src="https://cdn.bootcss.com/blueimp-md5/2.12.0/js/md5.min.js"></script>
<link href="https://cdn.bootcdn.net/ajax/libs/gitalk/1.7.2/gitalk.min.css" rel="stylesheet">
<script src="https://cdn.bootcdn.net/ajax/libs/gitalk/1.7.2/gitalk.min.js"></script>
<div id="gitalk-container"></div>
<script>
    var gitalk = new Gitalk({
    clientID: '4c2fa3d62f2b207e2da4',
    clientSecret: 'cfeb64e9a617ab3957598b3d1e501f7b9002aca7',
    repo: 'gitbook-commit',
    owner: 'runing-time',
    admin: ['runing-time'],
    id: md5(location.pathname),
    });
    gitalk.render('gitalk-container');
 </script>