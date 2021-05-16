## EMQ入门笔记
> 参考：[官网](https://docs.emqx.cn/broker/v4.3/)

### 1. 安装
#### docker安装
> 参考：[地址](https://docs.emqx.cn/broker/v4.3/getting-started/install.html#%E9%80%9A%E8%BF%87-docker-%E8%BF%90%E8%A1%8C-%E5%8C%85%E5%90%AB%E7%AE%80%E5%8D%95%E7%9A%84-docker-compose-%E9%9B%86%E7%BE%A4)  
> 镜像：[地址](https://hub.docker.com/r/emqx/emqx)  

```
docker pull emqx/emqx:4.3.0
docker run -d --restart=always --network mynetwork --network-alias myemqx --name myemqx -p 21883:1883 -p 28081:8081 -p 28083:8083 -p 28883:8883 -p 28084:8084 -p 18083:18083 emqx/emqx:4.3.0
访问 http://localhost:18083
默认用户名是 admin，密码是 public
```
```
占用端口说明 参考：https://www.dreamchan.cn/posts/55717.html
1883: MQTT 协议端口
8883: MQTT/SSL 端口
8083: MQTT/WebSocket 端口
8084: MQTT/wss 端口
8081: HTTP API 端口
18083: Dashboard 管理控制台端口
```
```
1883	MQTT/TCP 协议端口
11883	MQTT/TCP 协议内部端口，仅用于本机客户端连接
8883	MQTT/SSL 协议端口
8083	MQTT/WS 协议端口
8084	MQTT/WSS 协议端口
```
### 2. 