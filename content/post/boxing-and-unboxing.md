---
title: "Boxing and Unboxing"
date: 2020-06-19T15:33:02+08:00
lastmod: 2020-06-19T15:33:02+08:00
---

# 装箱与拆箱

装箱过程是通过调用包装器的valueOf方法实现的，而拆箱过程是通过调用包装器的 xxxValue方法实现的（xxx代表对应的基本数据类型）。

```java
Integer f1 = 1, f2 = 1, f3 = 200, f4 = 200;
// 对于引用类型的变量之间的比较是引用，而非变量的值
System.out.println(f1 == f2);//true
System.out.println(f3 == f4);//false
```

包装类Integer“==”运算在遇到算术运算的时会自动拆箱

Integer内部有一个缓存内部类IntegerCache，缓存范围（-128~127），当被赋的值在该范围内时，就直接从缓存池中去。

## Ref

1. [深入剖析Java中的装箱和拆箱](https://www.cnblogs.com/dolphin0520/p/3780005.html)
2. [面试官：兄弟，说说基本类型和包装类型的区别吧](https://juejin.im/post/5d8ff563f265da5bb252de76)

