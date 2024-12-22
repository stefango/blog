---
title: "Code Completion of pom.xml in IDEA"
date: 2020-03-19T11:18:27+08:00
lastmod: 2020-03-19T11:18:27+08:00
---

## IDEA中pom.xml没有代码提示？

检查maven `settings.xml` 中镜像的配置(需要指定`mirrorOf`)，正确配置如下：

```xml
<mirror>
	<id>alimaven</id>
	<name>aliyun maven</name>
	<url>http://maven.aliyun.com/nexus/content/groups/public/</url>
	<mirrorOf>central</mirrorOf>        
</mirror>
```

多谢[@intellijidea](https://twitter.com/intellijidea)
