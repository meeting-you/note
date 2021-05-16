### GitBook学习笔记
##### [GitBook安装笔记](https://runing-time.github.io/gitbook_test/doc/GitBook/GitBook%E5%AE%89%E8%A3%85%E7%AC%94%E8%AE%B0.html)
##### [GitBook使用笔记](https://runing-time.github.io/gitbook_test/doc/GitBook/GitBook%E4%BD%BF%E7%94%A8%E7%AC%94%E8%AE%B0.html)


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