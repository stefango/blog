---
title: "Nacos"
date: 2021-01-06T16:30:40+08:00
---

## Nacos

持久化：`conf/application.properties` 的 `### Count of DB:` 处配置数据库信息

[本地单机（非集群）运行](https://github.com/alibaba/nacos/issues/2902#issuecomment-674785210)：`bin/startup.cmd` 中配置 `set MODE="standalone"`

- 不配置会报错： `Caused by: com.alibaba.nacos.api.exception.NacosException: java.net.UnknownHostException: jmenv.tbsite.net`

auth和system启动报错

https://gitee.com/y_project/RuoYi-Cloud/issues/I1O1NJ

```
***************************
APPLICATION FAILED TO START
***************************
Description:
Failed to configure a DataSource: 'url' attribute is not specified and no embedded datasource could be configured.
Reason: Failed to determine a suitable driver class
Action:
Consider the following:
	If you want an embedded database (H2, HSQL or Derby), please put it on the classpath.
	If you have database settings to be loaded from a particular profile you may need to activate it (the profiles local are currently active).
Disconnected from the target VM, address: '127.0.0.1:5979', transport: 'socket'
Process finished with exit code 1
```



## REF

1. [nacos](https://nacos.io/zh-cn/docs/quick-start-spring-cloud.html)
2. [RuoYi-Cloud](http://doc.ruoyi.vip/ruoyi-cloud/document/hjbs.html#%E5%90%8E%E7%AB%AF%E8%BF%90%E8%A1%8C)

