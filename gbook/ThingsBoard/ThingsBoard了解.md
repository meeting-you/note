# ThingsBoard入门
> 物联网（英语：Internet of Things，简称IoT）  

## 1. ThingsBoard是什么?
> ThingsBoard是一个开源物联网平台，可实现物联网项目的快速开发、管理和扩展。

### 特点
```
ThingsBoard可用于:
设备管理，资产和客户并定义他们之间的关系。
基于设备和资产收集数据并进行可视化。
采集遥测数据并进行相关的事件处理进行警报响应。
基于远程RPC调用进行设备控制。
基于生命周期事件、REST API事件、RPC请求构建工作流。
基于动态设计和响应仪表板向你的客户提供设备或资产的遥测数据。
基于规则链自定义特定功能。
发布设备数据至第三方系统。
```
```
ThingsBoard设计原则:
高扩展: 使用领先开源技术构建的可水平扩展平台。
高容错：无单点故障集群中的每个节点都是相同的。
高性能：单个服务器节点可以根据用例处理几十甚至数十万个设备，集群可以处理数百万台设备。
高灵活：开发新功能可以方便的使用自定义部件、规则引擎等。
持久化：数据永久保存
```

## 2. [入门](http://www.ithingsboard.com/docs/getting-started-guides/helloworld/)
> [别人GitHub源码阅读](https://github.com/sanshengshui/thingsboard)  
> [源码](https://github.com/thingsboard/thingsboard)

### 1. 基于Docker安装ThingsBoard
> 参考：[官方](http://www.ithingsboard.com/docs/user-guide/install/docker/?ubuntuThingsboardQueue=kafka)  
> 镜像：[官方](https://hub.docker.com/r/thingsboard/tb-postgres/)  
```
-p 9090:9090 -将本地端口9090连接到公开的内部HTTP端口9090
-p 1883:1883 -将本地端口1883连接到暴露的内部MQTT端口1883
-p 5683:5683 -将本地端口5683连接到裸露的内部COAP端口5683
```
```
docker pull thingsboard/tb-postgres:3.2.2
docker run -d --restart=always --network mynetwork --network-alias mytb -e TB_QUEUE_TYPE=kafka  -e TB_KAFKA_SERVERS=mykafka:9092  -p 9090:9090 -p 1883:1883 -p 5683:5683/udp --name mytb thingsboard/tb-postgres:3.2.2
浏览器访问： http://localhost:9090/home
```
```
登录账号
Systen Administrator: sysadmin@thingsboard.org / sysadmin
Tenant Administrator: tenant@thingsboard.org / tenant
Customer User: customer@thingsboard.org / customer
```

### 2. 入门了解
> ThingsBoard的基本用法  
```
创建资产和设备;
定义资产和设备间的关系;
发送设备数据至ThingsBoard;
创建实时仪表板;
定义阀值并报警;
将警报通过邮件发送.
```
