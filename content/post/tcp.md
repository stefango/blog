---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Tcp"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2020-06-18T15:00:58+08:00
lastmod: 2020-06-18T15:00:58+08:00
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

# TCP三次握手和四次挥手以及11种状态

## 1、三次握手

置位概念：根据TCP的包头字段，存在3个重要的标识ACK、SYN、FIN 

ACK：表示验证字段 

SYN：位数置1，表示建立TCP连接 

FIN：位数置1，表示断开TCP连接

![TCP三次握手](../../img/tcp.assets/三次握手.png)

> 三次握手过程说明： 
>
> 1、由客户端发送建立TCP连接的请求报文，其中报文中包含seq序列号，是由发送端随机生成的，并且将报文中的SYN字段置为1，表示需要建立TCP连接。（SYN=1，seq=x，x为随机生成数值）
>
> 2、由服务端回复客户端发送的TCP连接请求报文，其中包含seq序列号，是由回复端随机生成的，并且将SYN置为1，而且会产生ACK字段，ACK字段数值是在客户端发送过来的序列号seq的基础上加1进行回复，以便客户端收到信息时，知晓自己的TCP建立请求已得到验证。（SYN=1，ACK=x+1，seq=y，y为随机生成数值）这里的ack加1可以理解为是确认和谁建立连接。
>
> 3、客户端收到服务端发送的TCP建立验证请求后，会使自己的序列号加1表示，并且再次回复ACK验证请求，在服务端发过来的seq上加1进行回复。（SYN=1，ACK=y+1，seq=x+1）

## 2、四次握手

![TCP四次握手](../../img/tcp.assets/四次握手.png)

> 四次握手过程说明： 
>
> 1、客户端发送断开TCP连接请求的报文，其中报文中包含seq序列号，是由发送端随机生成的，并且还将报文中的FIN字段置为1，表示需要断开TCP连接。（FIN=1，seq=x，x由客户端随机生成）
>
> 2、服务端会回复客户端发送的TCP断开请求报文，其包含seq序列号，是由回复端随机生成的，而且会产生ACK字段，ACK字段数值是在客户端发过来的seq序列号基础上加1进行回复，以便客户端收到信息时，知晓自己的TCP断开请求已经得到验证。（FIN=1，ACK=x+1，seq=y，y由服务端随机生成）
>
> 3、服务端在回复完客户端的TCP断开请求后，不会马上进行TCP连接的断开，服务端会先确保断开前，所有传输到A的数据是否已经传输完毕，一旦确认传输数据完毕，就会将回复报文的FIN字段置1，并且产生随机seq序列号。（FIN=1，ACK=x+1，seq=z，z由服务端随机生成）
>
> 4、客户端收到服务端的TCP断开请求后，会回复服务端的断开请求，包含随机生成的seq字段和ACK字段，ACK字段会在服务端的TCP断开请求的seq基础上加1，从而完成服务端请求的验证回复。（FIN=1，ACK=z+1，seq=h，h为客户端随机生成） 
>
> 至此TCP断开的4次挥手过程完毕。

## 3、流程及11种状态

### 三次握手流程

![TCP三次握手2](../../img/tcp.assets/三次握手2.png)

> 1、一开始，建立连接之前服务器和客户端的状态都为CLOSED； 
>
> 2、服务器创建socket后开始监听，变为LISTEN状态； 
>
> 3、客户端请求建立连接，向服务器发送SYN报文，客户端的状态变味SYN_SENT；
>
> 4、服务器收到客户端的报文后向客户端发送ACK和SYN报文，此时服务器的状态变为SYN_RCVD；
>
> 5、然后，客户端收到ACK、SYN，就向服务器发送ACK，客户端状态变为ESTABLISHED；
>
> 6、服务器端收到客户端的ACK后变为ESTABLISHED。此时3次握手完成，连接建立！

### 四次握手流程

![TCP四次握手2](../../img/tcp.assets/四次握手2.png)

> 由于TCP连接是全双工的，断开连接会比建立连接麻烦一点点。 
>
> 1、客户端先向服务器发送FIN报文，请求断开连接，其状态变为FIN_WAIT1；
>
> 2、服务器收到FIN后向客户端发送ACK，服务器的状态围边CLOSE_WAIT；
>
> 3、客户端收到ACK后就进入FIN_WAIT2状态，此时连接已经断开了一半了。如果服务器还有数据要发送给客户端，就会继续发送；
>
> 4、直到发完数据，就会发送FIN报文，此时服务器进入LAST_ACK状态；
>
> 5、客户端收到服务器的FIN后，马上发送ACK给服务器，此时客户端进入TIME_WAIT状态；
>
> 6、再过了2MSL长的时间后进入CLOSED状态。服务器收到客户端的ACK就进入CLOSED状态。
>
> 至此，还有一个状态没有出来：CLOSING状态。
>
> CLOSING状态表示：客户端发送了FIN，但是没有收到服务器的ACK，却收到了服务器的FIN，这种情况发生在服务器发送的ACK丢包的时候，因为网络传输有时会有意外。

### 11种状态

> LISTEN：等待从任何远端TCP 和端口的连接请求。
>
> SYN_SENT：发送完一个连接请求后等待一个匹配的连接请求。
>
> SYN_RECEIVED：发送连接请求并且接收到匹配的连接请求以后等待连接请求确认。
>
> ESTABLISHED：表示一个打开的连接，接收到的数据可以被投递给用户。连接的数据传输阶段的正常状态。
>
> FIN_WAIT_1：等待远端TCP 的连接终止请求，或者等待之前发送的连接终止请求的确认。
>
> FIN_WAIT_2：等待远端TCP 的连接终止请求。
>
> CLOSE_WAIT：等待本地用户的连接终止请求。
>
> CLOSING：等待远端TCP 的连接终止请求确认。
>
> LAST_ACK：等待先前发送给远端TCP 的连接终止请求的确认（包括它字节的连接终止请求的确认）
>
> TIME_WAIT：等待足够的时间过去以确保远端TCP 接收到它的连接终止请求的确认。
>
> TIME_WAIT 两个存在的理由：可靠的实现tcp全双工连接的终止；允许老的重复分节在网络中消逝。
>
> CLOSED：不在连接状态（这是为方便描述假想的状态，实际不存在）

# Ref

1. [TCP三次握手和四次挥手以及11种状态](https://blog.51cto.com/jinlong/2065461)
2. 《码出高效》1.5节TCP/IP