---
title: "Why Must the Pojo Attribute Type Be Wrappers"
date: 2020-06-18T16:48:56+08:00
lastmod: 2020-06-18T16:48:56+08:00
---

## 为什么 POJO 的属性必须要用包装类型呢？

数据库的查询结果可能是 null，如果使用基本类型的话，因为要自动拆箱（将包装类型转为基本类型，比如说把 Integer 对象转换成 int 值），就会抛出 `NullPointerException` 的异常。

