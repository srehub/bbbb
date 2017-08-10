---
layout: post
title: 'FEX 技术周刊-2015/07/13'
author: zhangtao
tag: weekly
---

## 业界会议

### 深JS已落下帷幕，部分分享资料抢先看
 - node profile https://github.com/JacksonTian/shenjs
 - 使用 React 构建在线 IDE 的应用实践 http://pan.baidu.com/s/1bha0m
 - GraphQL and Relay https://speakerdeck.com/dfguo/lightning-talk-at-jsconf-2015
 - Database Everywhere http://slides.com/evanyou/shenjs#/
 - TCP/IP 入门 http://www.zensh.org/slides/2015tcpip/index.html#/
 - JavaScript The World's Best Programming Language http://johnhax.net/2015/js-the-best/#0
 - 微服务架构下的服务通讯 http://vdisk.weibo.com/s/dYTu95rJuhJ-/1436684536
 

## 百度 Web 技术专栏

**[fex][翻译] We have a problem with promises** 

http://fex.baidu.com/blog/2015/07/we-have-a-problem-with-promises/ 

用Javascript的小伙伴们，是时候承认了，关于 promises 我们一直存在着问题。并非说 promises 本身有问题，Promises/A+ 是极好的。就我过去数年观察大量 PouchDB API 以及其他 promise-heavy API 的使用者们与这些 API 的搏斗中我发现，最大的问题是：大部分使用 promises 的小伙伴们并没有真正的理解它

**IoC 在前端模块化中的实践应用**  

http://efe.baidu.com/blog/ioc-in-modulization/

介绍了在单页式应用中，如何实现一个可复用的前端业务模块。

## 深阅读

### Perf audit: Loading performance

https://github.com/reddit/reddit-mobile/issues/247
Paul Irish 对 reddit.com 移动版的性能分析，对学习如何使用 Devtools 来做性能优化很有参考价值

与之相关的还有减少重绘的几个小贴士：http://www.sitepoint.com/10-ways-minimize-reflows-improve-performance/?utm_source=html5weekly&utm_medium=email

### Playing Startup
http://www.agilevc.com/blog/2015/06/17/playing-startup.html

What I mean is that people are joining startups because working in a startup seems cool or lucrative, not because they want to change the world and they’re fundamentally committed to putting in all the blood, sweat, and tears that entails.

### React with C++: Building the Quip Mac and Windows Apps

https://medium.com/@btaylor/react-with-c-building-the-quip-mac-and-windows-apps-c63155c1531b

Quip 是如何基于 React 和 C++ 开发桌面版本的

### How RSA works

http://yurichev.com/blog/RSA/

RSA 是如何实现的

### ES6 In Depth: Generators, continued
https://hacks.mozilla.org/2015/07/es6-in-depth-generators-continued/

### 人手一份核武器 - Hacking Team 泄露（开源）资料导览手册

http://drops.wooyun.org/news/6977

原来未公开的漏洞那么多

### How Go was Made - Andrew Gerrand
https://sourcegraph.com/blog/live/gophercon2015/123748269730

### Here’s How Facebook’s News Feed Actually Works
http://time.com/3950525/facebook-news-feed/

### The Real-Life Dangers of Augmented Reality
http://spectrum.ieee.org/consumer-electronics/portable-devices/the-reallife-dangers-of-augmented-reality/

### Understanding the Force
https://medium.com/@sxywu/understanding-the-force-ef1237017d5
基于 D3 实现力导向图


### 千亿市场背后，美团的技术团队和挑战  
http://mp.weixin.qq.com/s?__biz=MzA4NTU2MTg3MQ==&mid=209065371&idx=1&sn=81aa9057e74e05bfc233582584224b26&scene=2  

2015年美团大力布局O2O，大步迈向千亿级平台，背后，又有哪些产品与技术的力量在支持呢？7月5日，EGO带领会员走进美团，与美团技术专家深入探讨，现场干货满满，先来看看美团技术工程部负责人、美团技术委员会主席张锦懋带来的关于“美团技术团队和挑战”的分享吧~另附，美团如何招人：

http://mp.weixin.qq.com/s?__biz=MzA4NTU2MTg3MQ==&mid=209183729&idx=1&sn=1dc6f0718b5eb3df0beef87c36729c0f#rd

### Monitor Device Battery Status Using Ionic Framework
https://blog.nraboy.com/2015/07/monitor-device-battery-status-using-ionic-framework/?utm_source=mobilewebweekly&utm_medium=email
Ionic框架的电池状态监控方案。

另外还有一篇HTML5 Battery Status API的论文http://eprint.iacr.org/2015/616.pdf?utm_source=html5weekly&utm_medium=email


### Angular路由深入浅出
http://div.io/topic/1096
介绍angular路由的文章，图文详细。另外作者写了一系列angular分析文章http://www.html-js.com/article/column/693



## 新鲜货

### The Opa Language
http://opalang.org/
用一种语言搞定一切 Web 开发（前端＋后端）。

### Material Design Lite
http://www.getmdl.io/index.html
轻量版的 Material Design 样式，不过 JavaScript + CSS 压缩前也有接近 400K

### Revving up JavaScript performance with TurboFan
http://blog.chromium.org/2015/07/revving-up-javascript-performance-with.html
V8 中的新编译器 TurboFan 在 zlib 测试中提升了 29% 的性能

### Silicon Valley Dictionary
http://svdictionary.com/
硅谷专有名词辞典，可以学到很多东西

### A Month Designing in VR
https://medium.com/facebook-design/a-month-designing-in-vr-62474aef1f1c
虚拟现实中的设计实践  

### VisPy
http://vispy.org/
用于科学数据可视化的 Python 库

### redux
https://github.com/gaearon/redux
Atomic Flux with hot reloading.

### cola.js
http://marvl.infotech.monash.edu/webcola/

cola.js (A.K.A. "WebCoLa") is an open-source JavaScript library for arranging your HTML5 documents and diagrams using constraint-based optimization techniques.

### React UI Builder
https://github.com/ipselon/react-ui-builder
可视化的方式生成 React UI 代码

### Nuclear
http://alloyteam.github.io/Nuclear/
腾讯 alloy 团队新出的 UI 框架

### PipelineDB
http://www.pipelinedb.com/
包含流式计算的数据库，在插入数据的时候就会更新视图

### Node Profiler
http://alinode.aliyun.com/
本地深JS阿里分享的JavaScript的性能调优工具，node开发的好助手

### purifycss
https://github.com/purifycss/purifycss
移除没有使用的CSS，支持单页面应用，star已破五千，值得一试

### FlyRefresh
还记得这个性感的小飞机加载动画不？https://dribbble.com/shots/2067564-Replace 已经有人提供了ios、android、css的版本，壮哉我大前端(客户端也是端嘛~)！

 - [android] https://github.com/race604/FlyRefresh
 - [ios] https://github.com/MartinRGB/Replace-iOS
 - [css] http://codepen.io/suez/pen/oXLroX

不得不为codepen上的前端程序员们赞一个，创新力十足，虽然有些存在兼容性问题。但前端开发不就是要保持这种旺盛的创新力和表现欲么~

另外react native等框架的出现，客户端开发也在等着我们去征服啦！
这里有cnode的react native版 https://github.com/soliury/noder-react-native ，类似的还有不少，赶紧学习吧！



## 产品及其他

### 项目经理（project manager）是大傻B吗？ 
http://icodeit.org/2015/07/is-project-manager-a-fool/ 

经常可以看到黑这个群体的文章，但实际上项目经理要去解决一些软件工程问题，在软件团队中扮演这非常重要的角色。这个文章对pm的分析以及rd如何与pm相处，分析得很好。文中“如果换做是你，你会怎么做” 这种换位思考的理念在与人相处时非常重要。

### Buffer + Transparency
https://buffer.com/transparency
Buffer 公司开放了它的全部内部信息，包括工资、收入、邮件、工作计划及全部代码等

### 支付宝9.0改版背后的产品逻辑和战略布局
http://mp.weixin.qq.com/s?__biz=MzAxODIzODU0NQ==&mid=209235189&idx=1&sn=b8843d4af8cb86c0aa8214965e1f991f

从用户体验的五个层次看支付宝的改版：战略层→范围层→结构层→框架层→表现层
