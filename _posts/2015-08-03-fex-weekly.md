---
layout: post
title: 'FEX 技术周刊 - 2015/08/03'
author: zswang
tag: weekly
---

## 业界会议

**Velocity - 性能与运维大会 8.11**  
http://velocity.oreilly.com.cn/2015/  
今年的话题都还不错，可以围观。

## 百度 Web 技术专栏

**[EFE][译]避免使用 forEach**  
http://efe.baidu.com/blog/avoid-foreach/  
本文和性能无关。执行 for 循环总是比执行 Array.forEach 快。如果性能测试显示迭代的开销足够显著并且性能优先，那么你绝对应该使用 for 循环而不是 forEach（总是使用 for 循环是典型的过早优化。forEach 仍然可以在 1 微秒内遍历长度为 50 的数组）。本文和编码风格有关，是我对 forEach 和其它 Array.prototype 方法的思考，与性能无关。

**[EFE]CSS 代码静态质量检查**  
http://efe.baidu.com/  
CSS 中也有一些 Lint 工具，例如 CSSLint，PrettyCSS，recess，CKStyle，stylelint，当然还有百度 EFE 出品的 CSS 代码风格检查工具 CSSHint。本文将从功能、性能、适用范围、规则实现、个性化几个方面对这几个 Lint 工具进行对比。

**[FEX]FIS 3.0**  
http://fis.baidu.com/  
FIS3 , 为你定制的前端工程构建工具
解决前端开发中自动化工具、性能优化、模块化框架、开发规范、代码部署、开发流程等问题

## 深阅读

**春晚微信红包，是怎么扛住一百亿次请求的**  
http://www.infoq.com/cn/articles/weixin-bonus-load  
介绍了这个项目是如何不断迭代开发出来的

**Architecting Backend For A Social Product**  
http://highscalability.com/blog/2015/7/22/architecting-backend-for-a-social-product.html  
一个社交产品后端架构需要考虑的关键点，适合入门

**Autocomplete using Tries**  
http://dibaiee.ir/autocomplete-predict-trie/  
使用 Tries 数据结构实现输入框自动完成

**Code caching**  
http://v8project.blogspot.jp/2015/07/code-caching.html  
介绍 V8 中代码缓存的实现，它可以将 JavaScript 编译后的二进制缓存到本地

**Redesigning Chrome Android. Part 2 of 2**  
https://medium.com/@KounterB/redesigning-chrome-android-part-2-of-2-8884f0430940  
很有价值的文章，详细介绍了新版 Android 版本 Chrome 是如何设计出来的，你会发现原来在简单的 UI 背后有那么多细致的工作

**The Foundations of a Good UI**<br>
http://www.codelitt.com/blog/the-foundations-of-a-good-ui/<br>
设计优秀 UI 需要注意的问题

**MySQL InnoDB 学习资料**  
https://github.com/jeremycole/innodb_diagrams  
http://blog.jcole.us/2013/01/02/on-learning-innodb-a-journey-to-the-core/  
https://www.percona.com/live/mysql-conference-2013/sessions/innodb-journey-core  
Google的MySQL大神，Jeremy Cole在github开了一个项目：innodb_diagrams，里面绘制了很多InnoDB原理的图  

**在 JavaScript 中用箭头函数写出递归的方法**  
https://github.com/Lucifier129/Lucifier129.github.io/issues/7  
可以了解下这个新特性的神奇之处。

**7 Reasons to use AngularJS for developing your next web apps**  
http://codecondo.com/7-reasons-to-use-angularjs-for-developing-your-next-web-apps/  
文章中的图挺漂亮的，对 anaularjs 的分析还算中肯。

**The Facebook Method of Dealing With Complexity**  
http://ubiquity.acm.org/blog/the-facebook-method-of-dealing-with-complexity/  
Computer systems used to be weak, so we had to make their world simple and standardized. They now can handle almost endless complexity—but we still need to understand how to make the world simple, so we don’t risk burdening the majority of users with the needless complexity of the few.  

**The Hitchhiker's Guide to Modern JavaScript Tooling**  
http://reactkungfu.com/2015/07/the-hitchhikers-guide-to-modern-javascript-tooling/  
JavaScript tooling often consists of small tools, utilities and libraries that combined builds your code to be used in a browser. They allow you to rebuild your project after changes, run your test suite, hot reload your code and so on. I’d like to give you a quick overview about what popular tools do - and whether you need them or not. 

**一起写一个Web服务器**  
http://python.jobbole.com/81820/  
有助于补习 http 和 webserver 的基础知识

**REST简介**  
http://www.cnblogs.com/loveis715/p/4669091.html  
一说到REST，我想大家的第一反应就是“啊，就是那种前后台通信方式。”但是在要求详细讲述它所提出的各个约束，以及如何开始搭建REST服务时，却很少有人能够清晰地说出它到底是什么，需要遵守什么样的准则。在您将看到的这一篇文章中，我们将对REST，尤其是基于HTTP的REST服务进行详细地介绍。通过这些文章，您不仅可以了解到什么是REST，更能清晰地了解到您在编写REST服务时所需要遵守的各个守则，设计RESTful API时需要考虑的各种因素以及实现过程中可能遇到的问题等内容。

**[译]Quora是如何维持高质量代码的**<br>
http://www.jointforce.com/jfperiodical/article/942<br>
一个高质量的代码库可以加快长期开发的速度，因为它会使得迭代、协作和维护更加容易。在Quora，我们十分重视代码库的质量。我们开发了一系列工具和流程，这样就可以在维护高质量代码库的同时，提升开发的速度。在这篇文章中，我们将会介绍关于保证代码质量的一些方法，以及一些平衡这两方面的具体案例。 

**一个“三端”开发者眼中的React Native**  
http://f2e.souche.com/blog/-ge-san-duan-kai-fa-zhe-yan-zhong-de-react-native/  

**How to Create a Node.js Cluster for Speeding Up Your Apps**  
http://www.sitepoint.com/how-to-create-a-node-js-cluster-for-speeding-up-your-apps/  
cluster 扫盲

**互联网主要安全威胁解读及应对方案**  
http://mp.weixin.qq.com/s?__biz=MzAwMDU1MTE1OQ==&mid=209270229&idx=1&sn=02ee04586a55578907165cdf4312dead&scene=1#rd  
据Gartner调查，绝大多数信息安全攻击都发生在Web应用层，而超过60%的Web网站都相当脆弱，在如此严峻的安全形势下，如何才能构建一个相对安全的网站成为大家关心的一个话题。本文后包括17种常见安全问题应对方案Q&A，可以当 Web 安全扫盲文来看。

## 新鲜货

**Chrome 45 Beta: New ES2015 features, service worker improvements, and media controls**  
http://blog.chromium.org/2015/07/chrome-45-beta-new-es2015-features.html  
加入更多 ES6 的功能、增强 Service worker、优化触摸滚屏性能，并在 Android 版本播放媒体时出现提示

**DevTools Digest: Film strip and a new home for throttling**  
https://developers.google.com/web/updates/2015/07/23/devtools-digest-film-strip-and-a-new-home-for-throttling  
DevTools 新功能介绍，包括通分析性能时带截图、网速限制、等

**jsmpeg-vnc**  
https://github.com/phoboslab/jsmpeg-vnc  
基于 WebSocket 和 jsmpeg 在浏览器中实现远程共享屏幕，不过客户端目前只支持 Windows  

**Cooperative Scheduling of Background Tasks**  
https://w3c.github.io/requestidlecallback/  
W3C Web性能工作组只用了一周半定稿的很逆天的规范，API允许网页协同调用backgroundtasks，从而避免同一事件回路里高优先级任务（如输入，动画，帧合成）带来延误。此规范相信浏览器应有权利能力实现最优调用。看编辑，应该很快能在Chrome上实现啦。

**NativeScript 1.2 release - live sync, push notifications, native plugins and more**  
https://www.nativescript.org/blog/nativescript-1.2-release---live-sync-push-notifications-native-plugins-and-more  
新版增加了很多功能

**深JS PPT汇总**  
https://github.com/jsconfcn/ShenJS/issues/30  
Maintainable Node.js  

**WOPR**  
https://github.com/yaronn/wopr  
WOPR is a simple markup language for creating rich terminal reports, presentations and infographics.  

**JSCITY**  
https://github.com/ASERG-UFMG/JSCity/wiki/JSCITY  
JSCity is an implementation of the Code City metaphor for visualizing source code. We adapted and implemented this metaphor for JavaScript, using the three.js 3D library.

**开发 Apple Watch 应用**  
http://tech.glowing.com/cn/make_apple_watch_app/  
这篇文章来对 Apple Watch 的开发做个介绍，也列出开发过程中遇到的一些坑。虽然 Watch OS 2 已经出来，而我们是用 WatchKit 进行的开发，但很多内容也适用于 Watch OS 2。

**迄今为止最全的.NET技术栈**  
http://www.cnblogs.com/unruledboy/p/NetStack.html  
.NET 虽然在互联网应用中没太多话语权。但作为一个完整的体系，还是有很多值得学习的。

**ECMAScript 2015 编码规范--广发证券前端团队**  
https://github.com/gf-web/es6-coding-style  
另附百度 JS 编码规范：https://github.com/fex-team/styleguide/blob/master/javascript.md  

**caniuse-cmd**  
https://github.com/sgentle/caniuse-cmd  
Just what you've always wanted, it's a caniuse command line tool! All the power of caniuse.com with none of the nice UI or interactivity!

**Facebook为C++11带来了健壮且强大的Folly Futures库**  
http://www.infoq.com/cn/news/2015/07/facebook-folly-futures  
Future是一种用于同步并发操作的构件，它能够被视为对异步操作结果的只读代理对象，这个对象的初始值是未知的。如果Future的客户端试图在操作完成前读取它的值，可能会被阻塞。Future通常和一个Promise关联，Promise提供对Future的值进行写访问。

**Elixir: 编程语言的未来**  
http://elixir-lang.org/  
http://blog.eood.cn/elixir  
这篇文章谈一谈最近火爆的 Elixir，同时说一下对编程语言选择的看法。同时作为 Erlang 发烧友，Elixir 不可不提。即使有了那么多编程语言 Elixir 也值得接触。  

**TimLiu-iOS**  
https://github.com/Tim9Liu9/TimLiu-iOS  
汇总了一些iOS、mac开源项目及库。

**TauCharts. Data focused javascript charting library**  
https://github.com/TargetProcess/tauCharts  
http://blog.taucharts.com/taucharts-data-focused-charting-library/ 

**Bokken – Open-Source Reverse Code Engineering**  
http://bokken.re/index.html  
黑科技，貌似很强大

**国内手机继续放大招，国外公司已经开始不务正业了**<br>
http://mp.weixin.qq.com/s?__biz=MzA5MTMyNTYzNA==&mid=208056012&idx=1&sn=e65b56937d78a330874ae5f0f1d19d0c#rd  
20 $ 的  Android 平板：Remix 是亮点。

**Facebook WDT Warp speed Data Transfer**  
https://github.com/facebook/wdt  
http://mp.weixin.qq.com/s?__biz=MzA3MzYwNjQ3NA==&mid=207424565&idx=1&sn=04e9ab4d703ec554b9cbc730f92de6fc#rd  
Warp speed Data Transfer (WDT) is an embeddedable library (and command line tool) aiming to transfer data between 2 systems as fast as possible over multiple TCP paths. 

**RebornDB：下一代分布式Key-Value数据库架构介绍**  
http://mp.weixin.qq.com/s?__biz=MzAwNjMxNjQzNA==&mid=208050108&idx=1&sn=05f972ab35726fcaa0fc3a8c4e9a33f8&scene=1  
RebornDB是一个基于代理的分布式Redis集群解决方案。它有点像twemproxy，一个几乎是最早的、最著名的基于代理的Redis集群解决方案。

## 产品及其它

**HTML5进击者系列访谈**<br>
http://www.egret-labs.org/news
访谈了多位 HTML5 游戏开发者，听听他们的想法。  
另附：你为什么会离开游戏行业？http://www.skywind.me/blog/archives/1259  

**[译]如何杜绝大家在办公室耍手段**  
http://jiongks.name/blog/how-to-minimize-politics-in-your-company/  
在我所有的从商经历中，我从没听过有人说：“我喜欢办公室政治”。另一方面，我周围无数的人对政治深恶痛绝，甚至抱怨自己的公司就是如此。既然大家都不喜欢政治，那为什么它无处不在呢？  

**H5 生态圈、H5 产业该歇歇了**  
http://www.pingwest.com/h5-and-html5/  
随着微信朋友圈中各种动态页面的流行，HTML5这个Web技术标准被一些营销人员、创业者包装成了生态圈、产业。品玩采访了一些技术人员，在他们看来，这不但在概念上误导人，也并没有看到做出了什么有价值的事情。

**CTO的终结**  
http://mp.weixin.qq.com/s?__biz=MzAxNjYwMjY1MA==&mid=208176040&idx=1&sn=556d330df8f5726f05578bce057c7d46&scene=2  
其实是对研发的思考，值得每个中型研发团队的CTO 及技术负责人深思。

**《成为技术领导者》读书心得**<br>
http://mp.weixin.qq.com/s?__biz=MjM5NTIyNTUyMQ==&mid=209233791&idx=1&sn=967c7e473aac021b639dd7409fc70657&scene=1#rd<br>
温伯格的这本书，值得深入学习。

**不一样的命令行工具 mycli**<br>
http://pgcli.com/<br>
一个 MySQL 的命令行客户端，具有自动完成和语法高亮的功能。

**移动测试人员的未来：测试开发技术的融合**<br>
http://www.infoq.com/cn/articles/mobile-testing-future<br>
过去：从极易到极难；现状：业务与工具无法兼得；未来：找出问题还不够，要定位问题

**喵星人玩毛线**<br>
http://codepen.io/Yakudoo/full/oXJYxy<br>
一个短小有趣的代码示例，基于 three.js 实现并渲染一只可以互动的 3D 猫咪。
