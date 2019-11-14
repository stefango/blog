---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Skills"
subtitle: ""
summary: ""
authors: [Xu Zili]
tags: [skills]
categories: []
date: 2019-08-31T23:12:24+08:00
lastmod: 2019-08-31T23:12:24+08:00
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

## Windows10

1. 新窗口中打开文件夹：`ctrl` + `folder`
2. 显示桌面：`win` + `D`
3. 查看剪切板：`win` + `V`
4. 轻微摇晃 ( 左右 ) 当前窗体可隐藏其他窗体
5. office2019  https://www.cnblogs.com/radiumlrb/p/10030064.html  https://kms.03k.org

## Linux

1. 使用 Z-Shell 替换 bash （ 配置方式：https://segmentfault.com/a/1190000015155864 主题：https://birdteam.net/131798 ）
2. node 版本管理工具 NodeVersionManager
3. 返回到上一次的工作目录：`cd -`


## Chrome

1. 新标签页中打开网页：`ctrl` + `url`
2. 打开新的标签页：`ctrl` + `T`
3. 打开新的窗口：`ctrl` + `N`
4. 不使用 IDM 插件下载：`alt` + `download_link`
5. IDM Chrome 插件 https://chrome.google.com/webstore/detail/idm-integration-module/ngpampappnmepgilojfohadhhmbhlaek
6. 代理工具 SwitchyOmega ("导入/导出"中填入 `https://github.com/FelisCatus/SwitchyOmega/wiki/GFWList.bak` )

## Node

1.  npm的镜像源管理工具
   1. 安装 `npm i -g nrm` 
   2. 查看可选的源 ` nrm ls `
   3. 切换至淘宝 ` nrm use taobao `
   4. 添加源 ` nrm add registry <url>`
   5. 测试速度 ` nrm test npm `
2. [Check for outdated, incorrect, and unused dependencies](https://github.com/dylang/npm-check)
   1.  `npm i -g npm-check`
   2. 空格多选， 回车确定

## Git

1. 设置别名提高效率，如：用 `gaa` 替代 `git add -all` （ 配置：https://segmentfault.com/a/1190000015155864#articleHeader2 ）
2. 服务器上的 Git - 生成 SSH 公钥 https://git-scm.com/book/zh/v1/%E6%9C%8D%E5%8A%A1%E5%99%A8%E4%B8%8A%E7%9A%84-Git-%E7%94%9F%E6%88%90-SSH-%E5%85%AC%E9%92%A5
   1. `~/.ssh` 目录下输入`ssh-keygen` ，生成 `id_rsa` 和 `id_ras.pub`
   2. 码云 - 设置 - SSH公钥 - 填入本地 `~/.ssh/id_rsa.pub` 中的内容
   3. 服务器 - `vim  ~/.ssh/authorized_keys` - 填入本地 `~/.ssh/id_rsa.pub` 中的内容，连接 ` ssh root@ip` 

## Search Engine

1. 正确高效使用 Google https://b.xinshengdaxue.com/C04.html

## CDN

1. Github + jsDelivr + PicGo 打造稳定快速、高效免费图床 https://www.itrhx.com/2019/08/01/A27-image-hosting/

## 图片压缩

1. https://squoosh.app/

## MI 5卡刷

1. 新建备份，将备份文件拷至电脑
2. 下载 Team Win Recovery Project  https://twrp.me/ ，fastboot flash recovery [Recovery路径和文件名].img
3. 下载 MIUI 11第三方rom包 https://sourceforge.net/projects/xiaomi-eu-multilang-miui-roms/files/xiaomi.eu/MIUI-WEEKLY-RELEASES/9.10.10/xiaomi.eu_multi_MI5_9.10.10_v11-8.0.zip/download
4. 手机关机，长按音量上键+电源键进入rec( Team Win 页面)，清除-格式化data数据-输入yes(键盘弹不出来时切换语言)
5. 去手机卡，连接开代理的热点检查更新(其他跳过更新的方法也可以)
6. 添加mipay等应用 [https://www.199989.xyz/%E5%B0%8F%E7%B1%B3%E6%89%8B%E6%A9%9F%E7%B3%BB%E7%B5%B1eu%E7%89%88%E5%8A%A0%E5%85%A5mipay%E4%BB%A5%E5%8F%8A%E6%97%A5%E6%9B%86%E5%A2%9E%E5%8A%A0%E8%BE%B2%E6%9B%86

<script type="text/javascript" src="//rf.revolvermaps.com/0/0/1.js?i=53rxpnraqpa&amp;s=220&amp;m=0&amp;v=false&amp;r=false&amp;b=000000&amp;n=false&amp;c=ff0000" async="async"></script>
## 互传（保留文件原有时间戳）

1. 安卓传win：使用USB即可
2. win传安卓( USB 3.0 的传输速度为10 MB/s )：使用[锤子家的 HandShaker (完整安装包下载)](https://www.smartisan.com/apps/#/handshaker)
3. 使用 HandShaker 2.6.0 进行安卓传win时，无法保留原有时间戳

<a href="https://info.flagcounter.com/oY7z"><img src="https://s11.flagcounter.com/count2/oY7z/bg_FFFFFF/txt_000000/border_CCCCCC/columns_2/maxflags_10/viewers_0/labels_0/pageviews_1/flags_0/percent_0/" alt="Flag Counter" border="0"></a>

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="知识共享许可协议" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />本作品采用<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议</a>进行许可。