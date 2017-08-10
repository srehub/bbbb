---
layout: post
title: Mod 与 RequireJS/SeaJS 的那些事
author: walter
---

*本文的目的是为了能大让家更好的认识 Mod，之所以引入 RequireJS/SeaJS 的对比主要是应大家要求更清晰的对比应用场景，并不是为了比较出孰胜孰劣，RequireJS 和 SeaJS 都是模块化漫漫之路的先驱者，向他们致敬！*

##为工程化为生的[Mod](https://github.com/fex-team/mod)

>模块化是一种处理复杂系统分解成为更好的可管理模块的方式，它可以把系统代码划分为一系列职责单一，高度解耦且可替换的模块，采用模块化可以让系统的可维护性更加简单易得。

JavaScript 并没有为开发者们提供以一种简洁、有条理地的方式来管理模块的方法。从出发点来看，[Mod](https://github.com/fex-team/mod)和 RequireJS/SeaJS 是一致的，为开发者提供一套 JavaScript 模块化开发方案，让 JavaScript 的模块化开发变得更简单自然。但是在实现的过程中却存在巨大着的差异。

[Mod](https://github.com/fex-team/mod)严格上来讲并不是一个独立的模块化框架，它是被设计用做[前端工程化](http://fis.baidu.com)模块化方案的 JavaScript 支持，需要和自动化工具、后端框架配合来使用，目的在于希望给工程师提供一个类似 nodeJS 一样的开发体验，同时具备很好的线上性能。

RequireJS 和 SeaJS 的定位主要是 Web 浏览器端的模块加载器，依靠 JavaScript 运行时来支持模块定义、依赖分析和加载等功能。


##类 CommonJS 的开发体验

RequireJS 遵守的是 AMD 规范，SeaJS 遵守的是 CMD 的规范。AMD/CMD 规范使用的是“异步模块定义”的方式，这种方式给开发带来了极大的不便，所有的同步代码都需要修改为异步的方式，我们是否可以在前端开发中使用“ CommonJS ”的方式，开发者可以使用自然、容易理解的模块定义和调用方式，不需要关注模块是否异步，不需要改变开发者的开发行为。答案当然是肯定的，[Mod](https://github.com/fex-team/mod)并不完全遵守 AMD/CMD 规范，也正是为了为开发者提供更简单自然的开发体验。

###模块定义

Mod 使用 define 来定义一个模块：

```js
define (id, factory)
```

factory 提供了 3 个参数：require, exports, module ，用于模块的引用和导出。

**在平常开发中，我们无需关注模块定义，工具会自动对 JS 进行 define 包装处理**:

JS 源码

```js
//common/widget/menu/menu.js
var $ = require('common:widget/jquery/jquery.js');

exports.init = function() {
    $('.menu-ui ul li a').click(function(event) {
        var self = this;
        $('.menu-ui ul li a.active').removeClass('active');
        $(self).addClass('active');
        event.preventDefault();
    });
};
```

编译后代码

```js
define('common:widget/menu/menu.js', function(require, exports, module){
    var $ = require('common:widget/jquery/jquery.js');
    exports.init = function() {
        $('.menu-ui ul li a').click(function(event) {
            var self = this;
            $('.menu-ui ul li a.active').removeClass('active');
            $(self).addClass('active');
            event.preventDefault();
        });
    };
});
```

###模块调用

[Mod](https://github.com/fex-team/mod)会在模块初始化之前自动加载相关依赖。因此当我们需要一个模块时，只需提供一个模块名即可获取：

```js
require (id)
```

因为所需的模块都已预先加载，因此 require 可以立即(同步)返回该模块引用。**无论在页面的 script 还是模块内部**，工程师都可以放心通过 require 来加载模块，不需要考虑何时该使用同步接口何时调用异步接口。

##避免模块化引来的性能问题

RequireJS/SeaJS 通过过 JavaScript 运行时来支持“匿名闭包”、“依赖分析”和“模块加载”等功能，“依赖分析”需要在 JavaScript 运行时通过正则匹配到模块的依赖关系，然后顺着依赖链（也就是顺着模块声明的依赖层层进入，直到没有依赖为止）把所有需要加载的模块按顺序一一加载完毕，当模块很多、依赖关系复杂的情况下会严重影响页面性能。[Mod](https://github.com/fex-team/mod)通过以下设计避免了如上问题：

- 通过工具自动添加 define 闭包，线上不需要支持匿名闭包
- 通过工具自动处理依赖，线上不需要动态处理依赖
- 通过后端模板自动插入 script，线上不需要通过前端框架进行模块加载

通过以上设计，[Mod](https://github.com/fex-team/mod)极其精简，整个文件只有 100 多行，相比下 RequireJS 有 2000 多行，SeaJS 有将近 1000 行。

##避免模块化为打包部署带来的极大不便

通过 RequireJS/SeaJS 进行模块化开发后，合并静态资源(打包)将变得十分不方便和晦涩难懂，每个文件里只能有一个模块，无论是“ combo 插件”还是“ flush 插件”，都需要我们修改模块化调用的代码，这无疑是雪上加霜，工程师不仅需要在开发的时候关注模块定义，在调用的时候还需要关注在一个请求里面加载哪些模块比较合适，模块化的初衷是为了提高开发效率、降低维护成本，但我们发现这样的模块化方案实际上并没有降低维护成本，某种程度上来说使得整个项目更加复杂了。而使用 Mod，工程师只需要在配置文件配置合并策略即可，并不需要关注其他细节，[Mod](https://github.com/fex-team/mod)会自动处理好依赖以及合并信息并在模块初始化之前将模块的静态资源以及所依赖的模块加载并准备好。


##自适应的性能优化

整个[Mod](https://github.com/fex-team/mod)模块化流程如下：

![framework](/img/fis-modjs-requirejs-seajs/framework.png)

通过自动化工具对模块进行编译处理，包括对对 JavaScript 模块添加闭包、记录每个静态资源的部署路径以及依赖关系并生成资源表(resource map),如下所示，

```json
{
        "res": {
            "demo.js": {
                "uri": "/static/js/demo_33c5143.js",
                "type": "js",
                "deps": [
                    "demo.css"
                ],
                "pkg": "p0"
            },
            "index.html": {
                "uri": "/index.html",
                "type": "html",
                "deps": [
                    "demo.js",
                    "demo.css"
                ]
            },
            "script.js": {
                "uri": "/static/js/script_32300bf.js",
                "type": "js",
                "pkg": "p0"
            }
        },
        "pkg": {
            "p0": {
                "uri": "/static/pkg/aio_5bb04ef.js",
                "type": "js",
                "has": [
                    "demo.js",
                    "script.js"
                ],
                "deps": [
                    "demo.css"
                ]
            }
        }
    }
```

所有被打包的资源会有一个 pkg 属性 指向该表中的资源，而这个资源，正是我们配置的打包策略。有了这些信息，我们可以通过 Mod 框架(Mod 和后端框架)来管理和控制模块的加载。[Mod](https://github.com/fex-team/mod)的模块化可以十分灵活的适应各种性能优化场景，我们还可以通过监控模块的调用情况，自动生成最优的打包配置，让网站可以自适应优化。

##总结

[Mod](https://github.com/fex-team/mod)提供的是一体化的模块化解决方案，更多的是从工程化、自动化的角度去考虑，RequireJS/SeaJS 更独立灵活。

##相关阅读

- [How to Develop With Widgets](https://github.com/fex-team/fis-plus/blob/master/doc/widget.md)
- [Concat Files And Manage Dependencies Automatically](https://github.com/fex-team/fis-plus/blob/master/doc/pack-configuration.md)
- [A Toolset For Production](https://github.com/fex-team/fis-plus/blob/master/doc/compilation%20plugin.md)



