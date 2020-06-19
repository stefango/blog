---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Why Must the Pojo Attribute Type Be Wrappers"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2020-06-18T16:48:56+08:00
lastmod: 2020-06-18T16:48:56+08:00
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

## 为什么 POJO 的属性必须要用包装类型呢？

数据库的查询结果可能是 null，如果使用基本类型的话，因为要自动拆箱（将包装类型转为基本类型，比如说把 Integer 对象转换成 int 值），就会抛出 `NullPointerException` 的异常。

