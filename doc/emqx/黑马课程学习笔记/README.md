# 笔记
> 物联网与互联网的区别与联系  
```
互联网：
    互联网（internet），又称国际网络，指的是网络与网络之间所串连成的庞大网络，这些网络以一组通用的协议相连，形成逻辑上的单一巨大国际网络。
物联网：
    物联网（ IoT ，Internet of things ）即“万物相连的互联网”，是互联网基础上的延伸和扩展的网络，将各种信息传感设备与网络结合起来而形成的一个巨大网络，
实现在任何时间、任何地点，人、机、物的互联互通
```

## MQTT
```
1. MQTT协议的概念，特点及作用
    
2. 发布/订阅，代理，主题，会话，服务质量的相关概念，MQTT协议中的动作
    
3. MQTT协议的组成，固定头中的组成结构，可变头主要的组成结构
    
4. EMQ X是什么，完成EMQ X Broker环境搭建以及websocket客户端完成消息数据的收发
    
```
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