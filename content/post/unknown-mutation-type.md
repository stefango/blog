---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Vuex 踩坑记之 Unknown Mutation Type"
tags: ['vue','vuex']
categories: []
date: 2020-05-03T20:53:44+08:00
lastmod: 2020-05-03T20:53:44+08:00
featured: false
draft: false
---

### Q: Unknown Mutation Type

近日，我在 vuex 的 mutations 中封装 antd 提供的 notification 时，遇到了 `unknown mutation type: SHOW_NOTIFICATION`

```javascript
// vuex下的common模块common.js部分代码
...
namespaced: true, // 可圈可点
// notice: { type: 'error', msg: '-1' }
state: {
  userId: '', role: Number, token: '', code: 'cslg', noticeType: 'error'
},
mutations: {
  SHOW_NOTIFICATION(state, msg) {
    // 通过设置key唯一notification
    // const key = 'unique'
    console.log('SHOW_NOTIFICATION')
    alert(state.noticeType + msg)
    notification[state.noticeType]({
      // key,
      message: msg,
    });
  },
  OK(state, msg) {
    state.noticeType = 'success'
    console.log(state===this) // false，原因不详（
    this.commit('SHOW_NOTIFICATION', msg)
  },
  ...
},
actions: {...}
...
```

### A1（不推荐）

前情提要：各路大佬表示不建议在 mutation 中 commit。

野路子：由于设置了 namespaced 为 true，所以在 mutation 中 commit 时需要加上 moduleName。

### A2（推荐）

dispatch 不同的 action 来实现 commit 不同的 mutation。

### Ref

1. Jonas from vuebeijing.io wechat group
2. [组合 action](https://vuex.vuejs.org/zh/guide/actions.html#%E7%BB%84%E5%90%88-action)