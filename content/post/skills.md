---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Skills"
subtitle: "有、意思"
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
**推广**

<div>
  <a href="https://www.cfos.de/en/cfosspeed/cfosspeed.htm">
    <img src="https://www.cfos.de/images/cfosspeed-affiliate-banner-dark.png" width="728" alt="cFosSpeed会员横幅" title="使用cFosSpeed减少你的ping  - 互联网加速器！"/>
  </a>
</div>

{{% toc %}}

## Windows10

1. 新窗口中打开文件夹：`ctrl` + `folder`

2. 显示桌面：`win` + `D`

3. 查看剪切板：`win` + `V`

4. 轻微摇晃(左右)当前窗体可隐藏其他窗体

5. Office2019  https://www.cnblogs.com/radiumlrb/p/10030064.html  https://kms.03k.org

6. SSH for WSL (其实没必要SSH，在 cmder 中直接输入 `wsl` 即可)

   1. (据实际情况)关闭 Windows 自带的 SSH 服务(占用了22端口)

   2. 在 WSL 中安装 SSH 服务

      ```shell
      # 卸载
      sudo apt-get remove openssh-server
      # 安装
      sudo apt-get install openssh-server
      # 编辑配置文件
      sudo vim /etc/ssh/sshd_config
          Port 22  # 取消注释
          ...
          PermitRootLogin yes # 允许root登录
          ...
          PasswordAuthentication yes # 开启密码验证
      # 重启ssh服务
   sudo service ssh --full-restart
      ```
   
   3. 使用 cmder (支持复制、粘贴) 连接: `ssh username@localhost`
   
7. 命令行启动 mysql57：`net start mysql57`

8. [Windows Terminal 设置 wsl 默认目录](https://docs.microsoft.com/en-us/windows/terminal/customize-settings/profile-settings#starting-directory)：`"startingDirectory": "\\\\wsl$\\DISTRO NAME\\home\\USERNAME"`

## Linux

1. Telegram Group: [linux_home](https://t.me/linux_home)
2. 使用 zsh(ZSHELL) 替换 bash ([配置方式](https://segmentfault.com/a/1190000015155864) [主题](https://birdteam.net/131798))
3. node 版本管理工具 NodeVersionManager
4. 返回到上一次的工作目录：`cd -`
5. 进程查看器 htop
6. 在 WSL 中使用 Windows 下的 Sublime Text：`sublime_text.exe filename_in_wsl` （建议在 `.zshrc / .bashrc` 中设置 `alias` 为 st）
7. zsh（逐字）向右补全提示内容（需要插件 zsh-autosuggestions ）：(`ctrl` +) `→ / 右键` 
8. MySQL 命令行神器 mycli：`sudo apt install mycli`
9. 彩虹命令lolcat

```shell
sudo apt install rubygems # 安装rubygems
sudo gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/ # 切换国内镜像
sudo apt install lolcat
```

9. CentOS7默认防火墙firewall（新系统无法直接远程访问3306和80端口）
```shell
man firewall-cmd #查看帮助
systemctl stop firewalld.service #关闭防火墙
systemctl disable firewalld.service #禁止防火墙开机启动
firewall-cmd --reload #重新载入配置
firewall-cmd --state #查看防火墙状态
firewall-cmd --permanent --add-port=3306/tcp #永久添加3306端口
firewall-cmd --query-port=80/tcp #查询端口号80是否开启
firewall-cmd --permanent --remove-port=80/tcp #移除80端口
firewall-cmd --list-ports #查看端口（不输 `-ports` 直接回车时，可以 `--list` 开头的命令）
```

9. Centos7内置MariaDB和nginx
10. Tmux（终端复用器 Terminal Multiplexer） http://www.ruanyifeng.com/blog/2019/10/tmux.html 
11. v2ray在CentOS7中后台运行

```shell
sudo systemctl enable v2ray
sudo systemctl daemon-reload
sudo systemctl start v2ray
```

12. centos7 ss(Socket Statistics)命令查看端口占用(然后kill pid杀死进程) https://fxxk.life/replacing-netstat-with-ss-in-centos7/
13. centos7 部署 springboot 项目：使用 [pm2](https://pm2.keymetrics.io/) 守护 springboot 进程 (nohup 有时会不顶用)

```shell
# 安装(建议使用 nvm 来管理 node 版本)
npm install pm2 -g
# 新建用于启动项目的 pm2.json，name 字段为进程名
{
  "name": "cj_freshman",
  "script": "java",
  "args": [
    "-jar",
    "./freshman.jar",
    "--spring.profiles.active=prod"
  ],
  "exec_interpreter": "",
  "exec_mode": "fork"
}
# 文档
pm2 -h
# 启动守护
pm2 start pm2.json
# 查看进程
pm2 ls
# 开启/关闭/重启进程
pm2 start/stop/restart [id|name|filename]
# 注：jar包所在目录名发生改变后需要执行以下操作
pm2 delete 0
pm2 start pm2.json --update-env
```

14. 查找软件：如果不是 `yum / rpm` 安装的，是没有环境变量的，无法通过 `whereis` 找到软件，可通过 `find` 命令来找

## Nginx

1. Telegram Group: [nginx_ru](https://t.me/nginx_ru)
2. Ubuntu 自带 nginx 的配置文件地址 `/etc/nginx/sites-available/default`, 自己安装的 nginx 的配置文件地址 `/usr/local/nginx/conf/nginx.conf`
3. 打开(系统中所有的 Nginx，如：系统自带的 nginx、自己安装的 nginx 等): `sudo nginx`
4. 重新加载配置|重启|停止|退出 nginx: `sudo nginx -s reload|reopen|stop|quit`
5. 测试配置是否有语法错误: `sudo nginx -t` 
6. Nginx 单页应用配置 (Nginx conf for SPA)

```shell
# http->server->location
location / {
	try_files $uri $uri/ /index.html;
}
```

## Apache

```shell
#安装（-y表示yes，自动安装）
yum install httpd -y
#启动/查看状态（外部无法访问时参考本页防火墙设置 firewall-cmd）
service httpd start/status
#服务目录	/etc/httpd
#主配置文件	/etc/httpd/conf/httpd.conf
#网站数据目录	/var/www/html
#访问日志	/var/log/httpd/access_log
#错误日志	/var/log/httpd/error_log
```

## Maven

1. 项目使用 Spring Data JPA 时，`mvn install` 之前需要启动 mysql 服务（我是为了省电所以关了自启 :smile: ），如： `net start mysql57`

## MySQL

1. 无法远程访问（Redis等其他软件同理，特殊情况下还需要考虑宝塔防火墙、selinux等）：检查云服务提供商安全组配置、firewalld(CentOS7)、myql是否允许远程访问（如下设置）

   ```shell
   use mysql;
   #授权来自所有主机所有用户的访问
   grant all privileges  on *.* to root@'%' identified by "password";
   #刷新权限
   flush privileges;
   ```
   
   

2. MySQL8.0验证密码方式改变了（老版本的加密规则是*mysql_native_password*，而新版本的是*caching_sha2_password*）。因此，navicat连接MySQL8.0时可能会报错，参考解决方式如下：

   ```shell
   #打开cmd，登录mysql
   mysql -uroot -hlocalhost -p
   123456
   #修改mysql_native_password身份验证插件密码
   ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
   #刷新权限
   FLUSH PRIVILEGES;
   ```

   

## Tomcat9

```shell
cd /usr/local #/usr/local:用户级的程序目录,可以理解为C:/Progrem Files/
wget https://mirror.bit.edu.cn/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz
tar -xf apache-tomcat-9.0.33.tar.gz
```

### 多端口部署

1. 修改 `conf/server.xml`：在 `services` 下添加以下代码：

```xml
  <!-- 第n个项目start -->
  <!-- 1.修改name -->
  <Service name="Catalina3">
    <!-- 2.修改port -->
    <Connector port="83" protocol="HTTP/1.1" connectionTimeout="20000" redirectPort="8443" />
    <!-- <Connector port="8009" protocol="AJP/1.3" redirectPort="8443" /> -->
    <!-- 3.修改name -->
    <Engine name="Catalina3" defaultHost="localhost">
      <Realm className="org.apache.catalina.realm.LockOutRealm">
        <Realm className="org.apache.catalina.realm.UserDatabaseRealm" resourceName="UserDatabase" />
      </Realm>
      <!-- 4.修改appBase -->
      <Host name="localhost" appBase="webapps3" unpackWARs="true" autoDeploy="true">
        <Valve className="org.apache.catalina.valves.AccessLogValve" directory="logs" prefix="localhost_access_log" suffix=".txt" pattern="%h %l %u %t &quot;%r&quot; %s %b" />
      </Host>
    </Engine>
  </Service>
  <!-- 第n个项目end -->
```

2. 在 tomcat 根目录中新建以 appBase为名的文件夹，如：webapps3
3. 上传 war 包到 appBase 中（修改项目名为ROOT可不加项目名访问）

## Chrome

1. 新标签页中打开网页：`ctrl` + `url`
2. 打开新的标签页：单击鼠标滚轮 / `ctrl` + `T`
3. 打开新的窗口：`ctrl` + `N`
4. 不使用 IDM 插件下载：`alt` + `download_link`
5. [IDM Chrome 插件](https://chrome.google.com/webstore/detail/idm-integration-module/ngpampappnmepgilojfohadhhmbhlaek)
6. 代理工具 SwitchyOmega ("导入/导出"中填入 `https://github.com/FelisCatus/SwitchyOmega/wiki/GFWList.bak`)

## Typora

1. 设置标题级别：`ctrl` + `数字(小键盘不可以用)`
2. 反缩进：`shift` + `tab`

## Node

1. centos7安装node12
   ```shell
   curl -sL https://rpm.nodesource.com/setup_12.x | bash -
   sudo yum install -y nodejs
   # Delta RPMs disabled because /usr/bin/applydeltarpm not installed.
   yum -y install deltarpm

   # No Presto metadata available for nodesource
   # edit `/etc/yum.conf` and add or change the following:
   deltarpm=0
   ```
   
2. npm 的镜像源管理工具 nrm (npm registry manager)

   1. 安装 `npm i -g nrm` 
   2. 查看可选的源 ` nrm ls `
   3. 切换至淘宝 ` nrm use taobao `
   4. 添加源 ` nrm add registry <url>`
   5. 测试速度 ` nrm test npm `

3. [Check for outdated, incorrect, and unused dependencies](https://github.com/dylang/npm-check)
   1.  `npm i -g npm-check`
   2. 空格多选， 回车确定

## Git

1. git 代理（仅针对 github）

   ```shell
git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
   git config --global https.https://github.com.proxy socks5://127.0.0.1:1080
   ```

2. 利用 shell 脚本 + Git Bash (+ PowerShell) 快速提交代码

   1. 编写 shell 脚本 `my_shell.sh`

   ```shell
   read -p "Plz input your comment: " comment
   echo "Your comment is $comment"
   git add .
   git commit -m "$comment"
   git push
   ```

   2. 运行脚本的两种方式
      1. 文件管理器中双击运行
      2. 在 PowerShell 中运行上述脚本(`your_comment` 可不用引号包围)

       ```powershell
       .\myshell.sh your_comment
       ```

3. 设置别名提高效率，如：用 `gaa` 替代 `git add -all` （[配置](https://segmentfault.com/a/1190000015155864#articleHeader2)）

4. [服务器上的 Git - 生成 SSH 公钥](https://git-scm.com/book/zh/v1/%E6%9C%8D%E5%8A%A1%E5%99%A8%E4%B8%8A%E7%9A%84-Git-%E7%94%9F%E6%88%90-SSH-%E5%85%AC%E9%92%A5)
   
   1. 本地 - `~/.ssh` 目录下输入`ssh-keygen` ，生成 `id_rsa` 和 `id_ras.pub`
   2. 码云 - 设置 - SSH公钥 - 填入本地 `~/.ssh/id_rsa.pub` 中的内容
3. 服务器 - `vim  ~/.ssh/authorized_keys` - 填入本地 `~/.ssh/id_rsa.pub` 中的内容，连接 ` ssh root@ip` 
   
5. wget Unable to establish SSL connection

   ```shell
   # 将 raw.githubusercontent.com 替换为 raw.staticdn.net
   sh -c "$(wget https://raw.staticdn.net/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
   ```

   

## Search Engine

1. [正确高效使用 Google](https://b.xinshengdaxue.com/C04.html)

## V2Ray

### 服务器端(CentOS7)

1. 安装（[脚本备用地址](https://gist.github.com/stefango/5f3a5a6edbc37fde17356c754b0e5762)）：`sudo bash <(curl -L -s https://install.direct/go.sh)`

2. 配置：主要修改port（并添加到云服务提供商的安全组中）和clients id，id可借助 [Online UUID Generator Tool](https://www.uuidgenerator.net/) 来生成
3. 运行：`service v2ray start|stop|status|reload|restart|force-reload`

### 客户端(Windows10)

1. 下载[v2rayN-core](https://github.com/2dust/v2rayN/releases)
2. 配置：添加VMess服务器，填写address、port、id（服务器端的clients id）、alterId

## Xshell

1. 上传/下载工具包 rz (覆盖 `rz -y`)及 sz (下载), `yum install -y lrzsz`

## Cmder

1. 迁移Cmder（D盘→C盘）：修改环境变量，重新添加注册表 `cmder /register all`
2. 网络检查工具：[tracetcp](https://github.com/0xcafed00d/tracetcp/releases/tag/v1.0.3)（可在 `cmder\config\user_aliases.cmd` 中设置简写 `tt=tracetcp $*`，`$*` 用于接收参数），demo ：`tracetcp ip:port`

## CDN

1. [Github + jsDelivr + PicGo 打造稳定快速、高效免费图床](https://www.itrhx.com/2019/08/01/A27-image-hosting/)

## 图片压缩

1. https://squoosh.app/

## MI5 卡刷

1. 新建备份，将备份文件拷至电脑
2. [下载 Team Win Recovery Project](https://twrp.me/)，fastboot flash recovery [Recovery路径和文件名].img
3. [下载 MIUI 11第三方rom包](https://sourceforge.net/projects/xiaomi-eu-multilang-miui-roms/files/xiaomi.eu/MIUI-WEEKLY-RELEASES/9.10.10/xiaomi.eu_multi_MI5_9.10.10_v11-8.0.zip/download)
4. 手机关机，长按音量上键+电源键进入 rec (Team Win 页面)，清除-格式化 data 数据-输入 yes (键盘弹不出来时切换语言)
5. 去手机卡，连接开代理的热点检查更新(其他跳过更新的方法也可以)
6. [添加 mipay 等应用](https://www.199989.xyz/%E5%B0%8F%E7%B1%B3%E6%89%8B%E6%A9%9F%E7%B3%BB%E7%B5%B1eu%E7%89%88%E5%8A%A0%E5%85%A5mipay%E4%BB%A5%E5%8F%8A%E6%97%A5%E6%9B%86%E5%A2%9E%E5%8A%A0%E8%BE%B2%E6%9B%86)

## 互传（保留文件原有时间戳）

1. 安卓传 win：使用 USB 即可
2. win 传安卓(USB3.0 的传输速度为10 MB/s)：使用[锤子家的 HandShaker (完整安装包下载)](https://www.smartisan.com/apps/#/handshaker)
3. 使用 HandShaker2.6.0 进行安卓传 win 时，无法保留原有时间戳

## IE 存在的价值

### SVG转PNG（保留透明通道），生成 JetBrains 风格的头像

1. 用 IE11 打开此[链接](https://hub.jetbrains.com/api/rest/avatar/default?username=Jinping+Xi&size=32&dpr=1.0)，并指定 username

2. SVG 上右键“另存为图片”，并选择 PNG

3. 效果图

   ![JX](../../img/skills.assets/JX.png)

4. [在线PS](https://www.tuyitu.com/photoshop/)掉左右两端的透明区域

## AWS Free Tier(CentOS7)

1. 需要为EC2绑定弹性IP才可以使用

2. 用户名为centos，连接方式为 `ssh -i "your.pem" centos@弹性IP`

3. 修改密码：`sudo passwd root`

4. centos用户登入后，设置允许root用户登录

   ```shell
   #修改ssh配置(`su root`之后可以不用加`sudo`)
   sudo vi /etc/ssh/sshd_config
   #修改项如下
   PermitRootLogin yes
   PubkeyAuthentication no
   PasswordAuthentication yes
   #重启ssh
   service sshd restart
   ```

   

## IntelliJ IDEA Ultimate

1. 实时模板（Live Templates）：可用于生成 Spring Boot 主程序代码、SLF4J 代码等。

   - Spring Boot 主程序代码 Steps：

     - 添加 `Template Group` (如：A My Group，加 A 可将这个分组置顶)

     - 上述 Group 中添加 `Live Template`， `Abbreviation` 填入 `mainboot`
   
  - `Define`，选择 `Java`
   
  - `Template text` 中填入
   
       ```java
       public static void main(String[] args) {
           SpringApplication.run($CLASS$.class, args);
       }
    ```
   
  - `Edit variables`：为 `$CLASS$` 绑定 `Expression`，选择 `className()`
   
- Ref:
     - https://www.jetbrains.com/help/idea/template-variables.html
     - https://www.w3cschool.cn/intellij_idea_doc/intellij_idea_doc-doha2ece.html
     - https://www.cloudesire.com/quickly-get-a-logger-with-intellij-live-templates/

<a href="https://info.flagcounter.com/oY7z"><img src="https://s11.flagcounter.com/count2/oY7z/bg_FFFFFF/txt_000000/border_CCCCCC/columns_2/maxflags_10/viewers_0/labels_0/pageviews_1/flags_0/percent_0/" alt="Flag Counter" border="0"></a>

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="知识共享许可协议" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a>

本作品采用<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议</a>进行许可。

---

**推广（来自小米用户）**：

手机

<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-na.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=US&source=ac&ref=tf_til&ad_type=product_link&tracking_id=stefango0a-20&marketplace=amazon&region=US&placement=B086R5PD49&asins=B086R5PD49&linkId=eb4d7969fdccf980dfb1e2d2da8b8367&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"></iframe>

