---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Code Completion of pom.xml in IDEA"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2020-03-19T11:18:27+08:00
lastmod: 2020-03-19T11:18:27+08:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
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

