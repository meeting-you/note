# EMQ
## MQTT协议
### 协议介绍
#### 设计规范
#### 主要特性
#### 应用领域
### 协议原理
#### 协议实现方式
#### 网络传输与应用消息
#### MQTT客户端
#### MQTT服务端
#### 发布/订阅，主题，会话
#### MQTT协议中的方法
### 协议数据包结构
#### 固定头
#### 可变头
#### 消息体

## EMQX基础功能
### EMQX简介
#### emqx是什么
#### 为什么选择emqx
#### emqx与物联网平台的关系
#### emqx有哪些产品
#### emqx消息服务器功能列表
#### emqx服务端环境搭建
#### 客户端websocket消息收发
### Dashboard
#### 查看和配置Dashboard
#### Dashboard界面
#### ADMIN
#### MONITORING
#### RULE ENGINE
#### MANAGEMENT
#### TOOLS
### 认证
#### 认证简介
##### 认证方式
##### 认证流程
#### username认证
##### 预设认证数据
##### http api 管理认证数据
##### mqttx客户端验证
#### client id认证
##### 预设认证数据
##### http api 管理认证数据
##### mqttx 客户端验证
#### http认证
##### 认证原理
##### http请求信息
##### 认证请求
##### 认证服务开发
##### mqttx客户端验证
### 客户端sdk
#### Eclipse Paho Java
##### Paho介绍
##### Paho实现消息收发
#### MQTT.js
##### API列表
##### MQTT.js实现消息收发
### 日志与追踪
#### 控制日志输出
#### 日志级别
#### 日志文件和日志滚动
#### 针对日志级别输出日志文件
#### 日志格式
#### 日志级别和log handlers
#### 运行时修改日志级别
#### 日志追踪

## EMQX高级功能
### 发布订阅ACL
#### 发布订阅ACL简介
##### ACL 插件
##### ACL规则详解
##### 授权结果
##### 全局配置
##### 超级用户
##### ACL缓存
##### ACL 鉴权链
#### 内置ACL
##### 定义ACL
##### acl.conf 编写规则
#### HTTP ACL
##### ACL授权原理
##### HTTP 请求信息
##### superuser 请求
##### ACL 授权查询请求
##### HTTP ACL接口开发
##### HTTP ACL接口测试
### WebHook
#### WebHook简介
#### 配置项说明
#### Webhook实现客户端断连监控
##### 断连监控需求
##### 断连监控代码实现
##### 断连监控测试
### EMQ X集群
#### EMQ X 集群概述
####  EMQ X 分布式集群设计
##### 订阅表: 主题 - 订阅者
#####  路由表: 主题 - 节点
##### 主题树: 带通配符的主题匹配
#####  消息派发过程
#### 节点发现与自动集群
#### manual方式管理集群实践
##### 配置节点1
##### 配置节点2
##### 节点加入集群
##### 退出集群
#####  集群脑裂与自动愈合
##### 集群节点自动清除
### 管理监控API的使用
#### 接口安全及响应码
#### 核心关键API
### 保留消息
#### 简介
#### 保留消息配置
### 共享订阅
#### 简介
#### 带群组的共享订阅
#### 不带群组的共享订阅
#### 均衡策略与派发 Ack 配置
### 延迟发布
#### 简介
#### 延迟发布案例
### 代理订阅
#### 内置代理订阅
##### 开启代理订阅
##### 配置代理订阅规则
#### 基于Webhook和API实现动态代理订阅
##### 动态代理订阅需求
##### 代码实现及测试
### 主题重写
#### 简介
#### 配置主题重写规则
#### 主题重写配置验证
### 黑名单
#### 简介
#### 获取黑名单
#### 添加黑名单
#### 删除黑名单
### 速率限制
#### 速率限制简介和配置
#### 速率限制原理
#### 令牌桶算法在EMQX中的应用
### 飞行窗口和消息队列
#### 简介
#### 飞行队列与Receive Maximum
### 消息重传
#### 简介
#### 消息重传基础配置
### 规则引擎
#### 规则引擎概述
##### 简介
##### 应用场景
#### 规则引擎的组成
#### SQL语句
##### SQL语法
##### SQL语句相关示例
##### SQL事件和字段
##### SQL 运算符和函数
##### Dashboard中测试SQL语句
#### 规则引擎案例
##### 创建资源
##### 创建规则
##### 创建资源webhook接口
### 系统调优
#### Linux 操作系统参数
#### TCP 协议栈网络参数
#### Erlang 虚拟机参数
#### EMQ X 消息服务器参数

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