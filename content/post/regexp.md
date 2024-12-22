---
title: "RegExp"
date: 2020-11-15T16:13:50+08:00
---

## JS 正则表达式

### 纵向：

1. **`exec() `** 方法在一个指定字符串中执行一个搜索匹配。返回一个结果数组或 [`null`](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/null)。
2. **`test()`**  方法执行一个检索，用来查看正则表达式与指定的字符串是否匹配。返回 `true` 或 `false`。
3.  **`match()`** 方法检索返回一个字符串匹配正则表达式的结果。

### 横向：

全局匹配时， **`match()`** 方法返回所有匹配内容，而 **`exec() `** 返回单次匹配内容。

```js
let s='abhab'
let reg=/ab/g //此处有标识 g
let res1=reg.exec(s) //["ab", index: 0, input: "abhab", groups: undefined]
let res2=reg.exec(s) //["ab", index: 3, input: "abhab", groups: undefined]
let res3=reg.exec(s) //null
console.log(res1,res2)
let res3=s.match(reg) //["ab", "ab"]
let res4=s.match(reg) //["ab", "ab"]
console.log(res3,res4)
```



### Ref：

1. [正则表达式 - JavaScript | MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Guide/Regular_Expressions)
2. [RegExp - JavaScript | MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/RegExp)
3. [RegExp.prototype.exec() - JavaScript | MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/RegExp/exec)
4. [String.prototype.match() - JavaScript | MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/String/match)
5. [探究js正则匹配方法：match和exec](https://juejin.im/post/6844903828374945799)

