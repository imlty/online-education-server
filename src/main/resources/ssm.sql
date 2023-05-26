/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.28 : Database - imlty_edu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`imlty_edu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `imlty_edu`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名',
  `brief` varchar(255) DEFAULT '' COMMENT '课程一句话简介',
  `price` double(10,2) DEFAULT NULL COMMENT '原价',
  `price_tag` varchar(255) DEFAULT '' COMMENT '原价标签',
  `discounts` double(10,2) DEFAULT NULL COMMENT '优惠价',
  `discounts_tag` varchar(255) DEFAULT NULL COMMENT '优惠标签',
  `course_description_mark_down` longtext COMMENT '描述markdown',
  `course_description` longtext COMMENT '课程描述',
  `course_img_url` varchar(255) DEFAULT NULL COMMENT '课程分享图片url',
  `is_new` tinyint(1) DEFAULT NULL COMMENT '是否新品',
  `is_new_des` varchar(255) DEFAULT NULL COMMENT '广告语',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作者',
  `auto_online_time` datetime DEFAULT NULL COMMENT '自动上架时间',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `total_duration` int(11) DEFAULT NULL COMMENT '总时长(分钟)',
  `course_list_img` varchar(255) DEFAULT NULL COMMENT '课程列表展示图片',
  `status` int(2) DEFAULT '0' COMMENT '课程状态，0-草稿，1-上架',
  `sort_num` int(11) DEFAULT NULL COMMENT '课程排序，用于后台保存草稿时用到',
  `preview_first_field` varchar(255) DEFAULT NULL COMMENT '课程预览第一个字段',
  `preview_second_field` varchar(255) DEFAULT NULL COMMENT '课程预览第二个字段',
  `sales` int(11) DEFAULT '0' COMMENT '销量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`id`,`course_name`,`brief`,`price`,`price_tag`,`discounts`,`discounts_tag`,`course_description_mark_down`,`course_description`,`course_img_url`,`is_new`,`is_new_des`,`last_operator_id`,`auto_online_time`,`create_time`,`update_time`,`is_del`,`total_duration`,`course_list_img`,`status`,`sort_num`,`preview_first_field`,`preview_second_field`,`sales`) values 
(7,'Java 性能优化实战 21 讲','对 Java 工程师而言，性能优化能力决定了你能否进入大厂或成为一名高级工程师。  但性能优化的能力却极难提升，如果你缺乏正确的方法论和实战演练，则很容易事倍功半。',263.00,'',100.00,'成就自己','<p>背景介绍<br>\n对 Java 工程师而言，性能优化能力决定了你能否进入大厂或成为一名高级工程师。</p>\n<p>但性能优化的能力却极难提升，如果你缺乏正确的方法论和实战演练，则很容易事倍功半。</p>\n<p>专栏解读<br>\n专栏将从理论分析、工具支持、案例与面试点、JVM 优化四大部分入手，带你建立完整系统的性能优化知识体系，让你能对线上应用进行针对性优化，掌握并灵活应用各种实战排查工具。</p>\n<p>大量的实战案例结合高频面试问题，让你找准性能优化通用思路，具体分为 5 个模块、共 21 讲。</p>\n<p>第一部分，理论分析。讲解系统优化的衡量指标，并以此为依据，盘点常用优化方法，包括业务优化、计算优化、结果集优化、算法优化、高效实现等多个方面。学完这一部分，你将熟练掌握描述性能的方法，并对性能优化有系统的认知，摆脱日常优化时，无章可循，只靠盲猜的困境。</p>\n<p>第二部分，工具支持。这里将重点介绍评估操作系统设备性能的工具和实用的命令行解析。以及 Java 中最有效的基准测试工具 JMH 和监测 JVM 性能的常用工具，为后面的实践环节打下基础。</p>\n<p>第三部分，实战案例与高频面试点。这一部分会通过海量实战案例，深入专项性能场景，对常见的优化手段逐个击破，对性能优化的通用方法进行归类总结，加深你对性能优化的理解，并将每个场景下的高频面试点逐一击破，点拨调优思路，获得举一反三的能力，遇到相似的性能问题，能够迅速定位到合适的切入点进行优化。</p>\n<p>第四部分，JVM 优化。这里主要介绍垃圾回收的基本知识，解析 JIT 实现高效性能优化的底层原理，列举 JVM 常见的优化参数和编码方面的具体要求。学完本模块，你将掌握和JVM相关的常见优化方法。</p>\n<p>第五部分，求职面经。这一部分会针对工作中最常用的服务和框架，介绍一个完整的 SpringBoot 服务的优化案例。并从大厂面试真题的角度，带你掌握从系统层到应用层的优化技巧。</p>\n<p>讲师简介<br>\n李国 前京东、陌陌高级架构师<br>\n曾主导研发过京东金融调用链系统 SGM 和数据库中间件 CDS，以及陌陌基础社交业务线的整体架构工作，对高并发下的性能优化有丰富的经验。</p>\n','<p>背景介绍<br> 自媒体时代，无论你是做新媒体编辑、运营，还是市场营销、电商，微信推文、推广海报、产品详情页、朋友圈话术……文案需求无处不在。</p> \n<p>写出价值百万的文案，其实并不难，因为它们背后都有可总结、可借鉴的规律。只要通过系统学习和刻意训练，你也能创造出爆款文案，掌握可复用的硬通货技能，轻松获得职场晋升，或者开拓副业，实现财务自由！</p> \n<p>专栏解读<br> 这是一个零基础就能学会的爆款文案写作与变现路径，专栏共分为三大模块：入门基础篇、高手实战篇、进阶拓展篇。从入门写作到如何变现，让你成为赚钱达人。</p> \n<p>第一部分：掌握写作基础，夯实文字功底。这一模块会带你如何深入了解产品、洞悉用户需求，告诉你如何搭建文章框架，积累文字素材，做好动笔前的准备工作，只有掌握了这些，你对文案才有更深刻的理解。</p> \n<p>第二部分：爆款文案写作法，让你成为文案操盘手。这一模块为你拆解爆款文案的组成，手把手教你写作的5个步骤，从爆款标题的写作，到让用户爽快下单的技巧，从文字构建信任，到文案促成下单，这些技巧足以让你成为爆款文案操盘手。</p> \n<p>第三部分：如何让你的文案变成钱？带你搞定文案写作之后，为你提供4大变现路径，让你用文案打造个人影响力，并找到利用文案轻松赚钱的方法。</p> \n<p>18讲的内容，每一讲都汇集了爆款文案写作经验和实战技巧，每一讲都是经过验证的经验复用，每个文字都来自文案人深夜的凝思和血泪。</p>','http://192.168.20.131/group1/M00/00/00/wKgUg2CdKdqAIxdIAAAn8vniMSQ64.jfif',NULL,NULL,NULL,NULL,'2020-07-10 10:33:56','2021-05-14 13:51:24',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/1594348262748358.jpg',1,1,'100讲','50课时',1314),
(8,'Vue.js 3.0 核心源码解析','掌握框架原理，精通经典应用场景',99.00,'',88.00,'','<p>背景介绍<br>\n在过去的几年里，Vue、React、Angular 一直是国内前端的三大主流框架。在 2019 年 Vue 就像一匹黑马力压群雄，独占前端er 的宠爱，Github Star 排名荣登第一也反映了国内开发者对 Vue 的喜爱。</p>\n<p>最近，Vue 的作者尤雨溪在 Github 上介绍了 Vue 3.0 的最新进展，目标发布日期是 7 月中旬发布 RC 版本，8 月初发布正式版，也就是说 Vue 3.0 就在眼前！</p>\n<p>专栏解读<br>\n专栏将对 Vue.js 3.0 的框架源码进行系统、细致地分析。 深入到内核剖析实现原理，探究源码背后的设计思想。一方面帮你夯实 Vue.js 开发技能，一方面帮你理解源码分析的方式与编程思路，为你从底层逻辑理解优秀框架背后的技术思想。</p>\n<p>专栏主要分为以下3个部分：</p>\n<p>第一部分核心模块，这个部分会带你去分析 Vue.js 3.0 最核心的组件的实现原理以及 Vue.js 3.0 新特性 Composition API 的实现原理。掌握这个部分，可以让你对组件如何渲染和更新能有深刻的理解，并掌握 Composition API 背后的实现原理和应用场景。</p>\n<p>第二部分进阶模块，这个部分会带你分析 Vue.js 3.0 模板的编译和优化过程。带你了解 Vue.js 是如何编译模板并生成代码的，以及编译过程背后的性能优化思想是怎样的。</p>\n<p>第三部分扩展模块，将带你分析 Vue.js 3.0 的内置组件的实现原理、Vue.js 3.0 一些实用特性的实现原理以及 Vue.js 3.0 官方生态实现原理。经过学习，你可以了解这些功能的实现原理和职责边界，在平时工作中应用起来更加得心应手。</p>\n<p>在学习这门课程后，不仅可以了解 Vue.js 3.0 核心实现原理，还能一定程度地了解背后的设计思想。源码中一些好的编程思路和优秀的代码可以吸收来为自己的工作所用，修炼内功，提升技术能力。</p>\n<p>讲师简介<br>\n黄轶（ustbhuangyi） Zoom 前端架构师，前百度、滴滴资深技术专家</p>\n<p>现任 Zoom 前端架构师，主要负责推进前后端分离架构方案和 Zoom 自研组件库，不仅将Vue.js 带入 Zoom，而且通过魔改 Vue.js 源码开发了 Vue.js 2.x 的 CSP 兼容版本，并稳定服务于几十个用 Vue.js 做增强开发的页面。之前，他先后在百度和滴滴担任前端资深技术专家，并曾使用 Vue.js 重构了滴滴出行WebApp，主导开发 Vue.js 开源组件库 cube-ui。</p>\n<p>课程大纲</p>\n','<p>背景介绍<br> 在过去的几年里，Vue、React、Angular 一直是国内前端的三大主流框架。在 2019 年 Vue 就像一匹黑马力压群雄，独占前端er 的宠爱，Github Star 排名荣登第一也反映了国内开发者对 Vue 的喜爱。</p> \n<p>最近，Vue 的作者尤雨溪在 Github 上介绍了 Vue 3.0 的最新进展，目标发布日期是 7 月中旬发布 RC 版本，8 月初发布正式版，也就是说 Vue 3.0 就在眼前！</p> \n<p>专栏解读<br> 专栏将对 Vue.js 3.0 的框架源码进行系统、细致地分析。 深入到内核剖析实现原理，探究源码背后的设计思想。一方面帮你夯实 Vue.js 开发技能，一方面帮你理解源码分析的方式与编程思路，为你从底层逻辑理解优秀框架背后的技术思想。</p> \n<p>专栏主要分为以下3个部分：</p> \n<p>第一部分核心模块，这个部分会带你去分析 Vue.js 3.0 最核心的组件的实现原理以及 Vue.js 3.0 新特性 Composition API 的实现原理。掌握这个部分，可以让你对组件如何渲染和更新能有深刻的理解，并掌握 Composition API 背后的实现原理和应用场景。</p> \n<p>第二部分进阶模块，这个部分会带你分析 Vue.js 3.0 模板的编译和优化过程。带你了解 Vue.js 是如何编译模板并生成代码的，以及编译过程背后的性能优化思想是怎样的。</p> \n<p>第三部分扩展模块，将带你分析 Vue.js 3.0 的内置组件的实现原理、Vue.js 3.0 一些实用特性的实现原理以及 Vue.js 3.0 官方生态实现原理。经过学习，你可以了解这些功能的实现原理和职责边界，在平时工作中应用起来更加得心应手。</p> \n<p>在学习这门课程后，不仅可以了解 Vue.js 3.0 核心实现原理，还能一定程度地了解背后的设计思想。源码中一些好的编程思路和优秀的代码可以吸收来为自己的工作所用，修炼内功，提升技术能力。</p> \n<p>讲师简介<br> 黄轶（ustbhuangyi） Zoom 前端架构师，前百度、滴滴资深技术专家</p> \n<p>现任 Zoom 前端架构师，主要负责推进前后端分离架构方案和 Zoom 自研组件库，不仅将Vue.js 带入 Zoom，而且通过魔改 Vue.js 源码开发了 Vue.js 2.x 的 CSP 兼容版本，并稳定服务于几十个用 Vue.js 做增强开发的页面。之前，他先后在百度和滴滴担任前端资深技术专家，并曾使用 Vue.js 重构了滴滴出行WebApp，主导开发 Vue.js 开源组件库 cube-ui。</p> \n<p>课程大纲</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949659206804677.png',NULL,NULL,NULL,NULL,'2020-07-10 11:20:43','2020-09-01 11:12:08',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943511296066408.png',1,7,'共22节','更新10节',100),
(10,'打造千万级流量秒杀系统','一次搞定高可用、高性能、高并发',164.00,'',100.00,'','<p>背景介绍<br>\n服务器成本高？经常遇见宕机？网站流量一大就出 bug ？......</p>\n<p>面对大流量的业务需求，任何一家大厂和高速扩张的企业，都非常需要可以掌握高可用、高性能、高并发 “三高”系统架构设计能力的人才。</p>\n<p>可以说，只有掌握了“三高”架构的经验，才能拥有更多成长和晋升机会，也更具竞争优势。</p>\n<p>专栏解读<br>\n如何全面、快速提升相关能力？秒杀系统的业务逻辑非常简单，流程清晰，在互联网“三高”场景中又非常典型，用它来学习“三高”再合适不过。</p>\n<p>在这门专栏里，我们会为你呈现一个完整的秒杀项目流程，从需求分析、架构设计、代码实现、性能测试这四大部分，渐次带你设计出符合“三高”要求的秒杀系统，真正搞懂“三高”架构及其实现，并举一反三，轻松搭建其他满足业务需求的“三高”架构。</p>\n<p>第一部分，需求分析：<br>\n将从电商发展史和秒杀系统的业务背景入手，介绍秒杀系统的前后端功能需求和非功能需求，特别是如何通过思想实验来分析非功能需求中的“三高”并计算其指标。</p>\n<p>通过学习这块内容，我们希望你能掌握“三高”架构的需求分析，不至于在开始之初就手忙脚乱。</p>\n<p>第二部分，架构设计：<br>\n这部分我们将为你分享秒杀系统的总体架构设计及其具体的高可用、高性能、高并发原理和方法。</p>\n<p>你将学到如何通过领域驱动设计（DDD）来设计秒杀系统，如何利用云计算基础设施设计高可用架构，如何利用池化技术、漏斗模型、熔断和限流等技术手段提升并发能力和稳定性。</p>\n<p>第三部分，代码实现：<br>\n介绍秒杀系统的代码实现细节，希望你能学到如何利用热更新、池化技术、缓存技术、漏斗模型等高级编程技巧，提升服务的并发性能和稳定性。</p>\n<p>第四部分，性能测试：<br>\n介绍项目落地的最后环节——如何做好验收工作，希望你能学会用压力测试来做性能调优，以及了解项目上线后需要注意的事情。</p>\n<p>讲师介绍<br>\n易乐天 前小米国际电商技术负责人</p>\n<p>10 年软件开发经验。多年 Linux 系统编程、高性能和高并发编程经验。参与过亿级用户、千万日活、百万并发系统开发，曾经将 IM 云 WebSocket 服务单机性能从 2 万长连接优化到 5 万长连接。在小米期间负责过国际电商秒杀系统性能优化，提升并发性能 30%。</p>\n<p>主持过海外电商架构演进，曾产出基于 gRPC 的微服务框架和微服务 API 网关，并作为 2020 GIAC 大会讲师分享《如何用Go支撑海外电商架构演进》。</p>\n<p>课程大纲</p>\n','<p>React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603348287878.png',NULL,NULL,NULL,NULL,'2020-07-17 12:32:43','2021-05-14 13:29:29',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603393915818.png',1,12,'React 入门','React 入门',2323),
(11,'文案高手的18项修炼','手把手教你写出实用的高转化文案',263.00,'',100.00,'成就自己','<p>背景介绍<br>\n自媒体时代，无论你是做新媒体编辑、运营，还是市场营销、电商，微信推文、推广海报、产品详情页、朋友圈话术……文案需求无处不在。</p>\n<p>写出价值百万的文案，其实并不难，因为它们背后都有可总结、可借鉴的规律。只要通过系统学习和刻意训练，你也能创造出爆款文案，掌握可复用的硬通货技能，轻松获得职场晋升，或者开拓副业，实现财务自由！</p>\n<p>专栏解读<br>\n这是一个零基础就能学会的爆款文案写作与变现路径，专栏共分为三大模块：入门基础篇、高手实战篇、进阶拓展篇。从入门写作到如何变现，让你成为赚钱达人。</p>\n<p>第一部分：掌握写作基础，夯实文字功底。这一模块会带你如何深入了解产品、洞悉用户需求，告诉你如何搭建文章框架，积累文字素材，做好动笔前的准备工作，只有掌握了这些，你对文案才有更深刻的理解。</p>\n<p>第二部分：爆款文案写作法，让你成为文案操盘手。这一模块为你拆解爆款文案的组成，手把手教你写作的5个步骤，从爆款标题的写作，到让用户爽快下单的技巧，从文字构建信任，到文案促成下单，这些技巧足以让你成为爆款文案操盘手。</p>\n<p>第三部分：如何让你的文案变成钱？带你搞定文案写作之后，为你提供4大变现路径，让你用文案打造个人影响力，并找到利用文案轻松赚钱的方法。</p>\n<p>18讲的内容，每一讲都汇集了爆款文案写作经验和实战技巧，每一讲都是经过验证的经验复用，每个文字都来自文案人深夜的凝思和血泪。</p>\n','<p>背景介绍<br> 自媒体时代，无论你是做新媒体编辑、运营，还是市场营销、电商，微信推文、推广海报、产品详情页、朋友圈话术……文案需求无处不在。</p> \n<p>写出价值百万的文案，其实并不难，因为它们背后都有可总结、可借鉴的规律。只要通过系统学习和刻意训练，你也能创造出爆款文案，掌握可复用的硬通货技能，轻松获得职场晋升，或者开拓副业，实现财务自由！</p> \n<p>专栏解读<br> 这是一个零基础就能学会的爆款文案写作与变现路径，专栏共分为三大模块：入门基础篇、高手实战篇、进阶拓展篇。从入门写作到如何变现，让你成为赚钱达人。</p> \n<p>第一部分：掌握写作基础，夯实文字功底。这一模块会带你如何深入了解产品、洞悉用户需求，告诉你如何搭建文章框架，积累文字素材，做好动笔前的准备工作，只有掌握了这些，你对文案才有更深刻的理解。</p> \n<p>第二部分：爆款文案写作法，让你成为文案操盘手。这一模块为你拆解爆款文案的组成，手把手教你写作的5个步骤，从爆款标题的写作，到让用户爽快下单的技巧，从文字构建信任，到文案促成下单，这些技巧足以让你成为爆款文案操盘手。</p> \n<p>第三部分：如何让你的文案变成钱？带你搞定文案写作之后，为你提供4大变现路径，让你用文案打造个人影响力，并找到利用文案轻松赚钱的方法。</p> \n<p>18讲的内容，每一讲都汇集了爆款文案写作经验和实战技巧，每一讲都是经过验证的经验复用，每个文字都来自文案人深夜的凝思和血泪。</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943482627237468.jpg',NULL,NULL,NULL,NULL,'2020-07-10 10:33:56','2020-07-10 10:45:38',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/1594348262748358.jpg',1,1,'100讲','50课时',1314),
(14,'React 入门','React 入门',164.00,'',100.00,'','<p>React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门</p>\n','<p>React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603348287878.png',NULL,NULL,NULL,NULL,'2020-07-17 12:32:43','2020-07-17 12:33:59',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603393915818.png',1,12,'React 入门','React 入门',2323),
(15,'大数据云计算','海量大数据课程',88.00,'',NULL,'先到先得','介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。',NULL,'http://localhost:8080/upload/1606567155321.jpg',NULL,NULL,NULL,NULL,'2020-08-04 15:15:06','2021-04-19 23:16:52',0,NULL,'http://localhost:8080/upload/1606567155321.jpg',1,1,'共10讲','每周四更新',100),
(20,'Java入门','掌握多种技能，胜任前端与后端aaa',88.00,'',66.60,'先到先得','<p>介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。</p>\n',NULL,'http://192.168.20.131/group1/M00/00/00/wKgUg2CdJlqAZ5PIAAC13MqV7Qc658.png',NULL,NULL,NULL,NULL,'2020-08-05 13:42:08','2021-05-14 13:49:30',0,NULL,'http://localhost:8080/upload/1606567155321.jpg',0,1,'共10讲aaa','每周四更新aa',100),
(32,'Spring 响应式编程实战','提高系统弹性，秒级响应一触即发',666.00,'',666.00,'test','<p><strong>背景介绍</strong></p>\n<p>Spring 5 的发布为响应式编程普及和发展带来了红利，基于 Spring 5 内嵌的响应式 Web 框架、响应式数据访问、响应式通信等多种响应式组件，开发者可以轻松构建一个具备及时响应性和弹性的响应式系统。<br>\n如今，响应式编程已被国内诸如阿里、腾讯等一线大厂广泛应用，可以说它代表了一种技术发展和演进的趋势。紧跟这一趋势，对于提升开发者的职业层级是一个很好的加分项。</p>\n<p>专栏解读<br>\n专栏分成六大篇章，共22讲，基于 Spring 5 的框架，对响应式编程的各个组件进行详细讲解，并结合实战案例，帮你更快上手响应式编程：</p>\n<p>基本概念篇</p>\n<p>专栏将讲解响应式系统和响应式编程的基本概念以及应用场景，并分析响应式编程模型中所包含的响应式流和背压机制，学了这些，你便掌握了实现系统弹性的关键。</p>\n<p>此外，这一部分也会讲解 Spring 框架中的响应式编程技术方案，用一个 ReactiveSpringCSS 案例贯穿整个学习过程，为你后面学习响应式Web、响应式数据访问、响应式消息通信和响应式测试等内容做铺垫。</p>\n<p>编程框架篇</p>\n<p>Project Reactor 是 Spring 5 内置的响应式编程框架。它可以使用 Flux 或 Mono 对象来构建响应式数据流，并提供了高效的响应式操作符。它有多种组合方式、完善的异常处理机制，以及面对背压时候的处理机制、重试机制。因此，成为业界领先的响应式编程框架。学完这一部分，你将懂得如何从开发框架和代码编写上提高系统及时响应性。</p>\n<p>技术组建篇-响应式 Web 服务</p>\n<p>WebFlux 是 Spring 中全新的 Web 开发框架，相比于传统的 Web 框架，它是一个典型非阻塞异步的框架，它可以运行在诸如 Netty、Undertow 等容器上，因此它的运行环境的可选择性要比传统 Web 框架多得多。</p>\n<p>这部分将带你用 WebFlux 来构建响应式 RESTful 服务。并为你讲解如何使用支持响应式流的 WebClient 工具类调用响应式服务以及针对网络通信，如何使用全新的 RSocket 协议来实现响应式数据传输。</p>\n<p>学完这一部分，你将掌握构建 Web 服务的系统方法，学会创建响应式系统中 Web 层组件。</p>\n<p>技术组件篇-响应式数据访问</p>\n<p>传统的 JDBC 并不支持响应式编程模式，而 Spring 家族也专门提供了 Spring Data R2DBC 框架来解决这一问题。这部分会讲解如何使用 Spring Data Reactive 组件来构建响应式数据访问层，并结合案例分别对MongoDB 和 Redis这两款 NoSQL 数据库实现数据操作。</p>\n<p>学完这一部分，你可以掌握使用响应式编程技术实现数据访问层的系统方法，并学会在响应式系统中嵌入 MongoDB、Redis 等主流 NoSQL 技术的实现过程。</p>\n<p>技术组件篇-响应式消息通信</p>\n<p>这部分会讲解如何构建响应式消息通信层。首先，我们将使用 Spring Cloud Stream 框架的响应式版本来实现消息的发布和消费。另外，关于消息通信，专栏也会介绍一系列高级开发主体，为你提供满足日常开发需要的开发技巧。</p>\n<p>学完这一模块，你就会使用 Spring Cloud Stream 框架实现跨服务之间的响应式消息通信，同时也会掌握 RabbitMQ 这款消息中间件的使用方法。</p>\n<p>技术组件篇-响应式测试</p>\n<p>专栏首先会为你详细讲解关于 Project Reactor 的测试方法和工具，然后手把手带你对 Web 层和数据访问层中的响应式组件进行系统测试。学完这一模块，你便掌握了验证各个响应式编程组件的正确性的系统方法，并学会使用 Spring Boot 中提供的各种测试注解完成对 Web 服务层、消息通信层和数据访问层的集成测试。</p>\n<p>讲师简介<br>\n鉴湘 创业公司 CTO</p>\n<p>10 年以上大型 Java EE 和分布式系统构建和优化的经验，曾带领百人团队完成基于 Spring 家族技术体系的亿级用户规模互联网应用系统的建设工作，对基于 Spring 框架进行系统开发和维护有着丰富的实践经验。</p>\n',NULL,'',NULL,NULL,NULL,NULL,'2021-05-10 00:08:04','2021-05-14 13:27:57',0,NULL,'',0,0,'提高系统弹性，秒级响应一触即发','imlty',66);

/*Table structure for table `course_lesson` */

DROP TABLE IF EXISTS `course_lesson`;

CREATE TABLE `course_lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '章节id',
  `theme` varchar(255) NOT NULL COMMENT '课时主题',
  `duration` int(11) NOT NULL DEFAULT '0' COMMENT '课时时长(分钟)',
  `is_free` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否免费',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `order_num` int(11) DEFAULT NULL COMMENT '排序字段',
  `status` int(2) DEFAULT '0' COMMENT '课时状态,0-隐藏，1-未发布，2-已发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `course_id_index` (`course_id`,`section_id`) USING BTREE,
  KEY `idx_sectionId_orderNum` (`section_id`,`order_num`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='课程节内容';

/*Data for the table `course_lesson` */

insert  into `course_lesson`(`id`,`course_id`,`section_id`,`theme`,`duration`,`is_free`,`create_time`,`update_time`,`is_del`,`order_num`,`status`) values 
(8,7,7,'01 | 理论分析：性能优化，有哪些衡量指标？需要注意什么？',0,1,'2020-07-10 10:35:30','2021-05-14 13:54:20',0,1,1),
(9,7,7,'01 | 理论分析：性能优化，有哪些衡量指标？需要注意什么？',0,0,'2020-07-10 10:35:53','2021-05-14 13:54:10',0,1,2),
(10,7,8,'04 | 工具实践：如何获取代码性能数据？',0,0,'2020-07-10 10:36:09','2021-05-14 13:55:32',0,12,2),
(11,7,8,'03 | 深入剖析：哪些资源，容易成为瓶颈？',0,0,'2020-07-10 10:36:21','2021-05-14 13:55:21',0,6,2),
(12,8,9,'开篇词 | 解析 Vue.js 源码，提升编码能力',0,1,'2020-07-10 11:21:49','2020-07-22 12:10:49',0,0,2),
(13,8,9,'导读 | 一文看懂 Vue.js 3.0 的优化',0,0,'2020-07-10 11:22:13','2020-07-22 12:10:49',0,1,2),
(14,9,10,'11111',0,0,'2020-07-10 11:30:47','2020-07-13 15:54:52',0,0,2),
(15,10,11,'01 | 功能需求：秒杀业务背景及前端需求是怎么产生的？',0,1,'2020-07-17 12:33:20','2021-05-14 13:30:10',0,0,2),
(16,7,7,'01 | 理论分析：性能优化，有哪些衡量指标？需要注意什么？',15,0,'2020-08-05 11:52:24','2021-05-14 13:54:26',0,1,2),
(17,20,16,'第一讲 什么是Java',15,0,'2020-08-05 13:45:01','2020-08-05 13:45:01',0,2,0),
(18,20,16,'第二讲 Java环境安装',15,0,'2020-08-05 13:45:33','2020-08-05 13:45:33',0,2,0),
(19,20,16,'第三讲 HelloWord',15,0,'2020-08-05 13:45:51','2020-08-05 13:45:51',0,2,0),
(20,20,17,'第一讲 Java中的变量',15,0,'2020-08-05 13:46:41','2020-08-05 13:46:41',0,2,0),
(21,20,17,'第二讲 Java中的数据类型',15,0,'2020-08-05 13:47:06','2020-08-05 13:47:48',0,3,0),
(22,27,19,'第一讲 我是琦玉01',2,0,'2020-08-13 15:11:27','2020-08-14 10:33:37',0,1,0),
(23,27,19,'第二讲 琦玉是我',10,1,'2020-08-13 15:12:41','2020-08-13 15:12:41',0,2,0),
(24,27,20,'第一讲 琦玉打怪兽一打二',18,1,'2020-08-13 15:13:12','2020-08-13 15:16:58',0,2,0),
(25,27,20,'第二讲 琦玉打boss',10,1,'2020-08-13 15:13:33','2020-08-13 15:13:33',0,2,0),
(26,27,23,'琦玉大战章鱼怪',25,1,'2020-08-31 11:00:39','2020-08-31 11:06:13',0,5,0),
(27,27,23,'琦玉大战螃蟹怪',25,0,'2020-08-31 11:03:42','2020-08-31 11:03:42',0,3,0),
(28,27,21,'琦玉大战李思思',21,0,'2020-09-01 11:19:25','2021-04-19 21:25:12',0,3,0),
(29,31,0,'撒旦法',0,0,'2020-12-01 14:22:19','2020-12-01 14:22:19',0,78,0),
(30,20,18,'java高级进阶开发',1000,0,'2020-12-01 14:22:37','2021-04-19 23:25:45',0,2,1),
(31,7,22,'02 | 理论分析：性能优化有章可循，谈谈常用的切入点',0,0,'2021-04-19 22:56:39','2021-05-14 13:55:09',0,66,0),
(32,7,22,'01 | 理论分析：性能优化，有哪些衡量指标？需要注意什么？',1,1,'2021-05-10 00:00:06','2021-05-14 13:54:51',0,4,0),
(33,32,26,'第一章第一课',500,1,'2021-05-10 00:10:57','2021-05-10 00:10:57',0,0,0),
(34,32,27,'第一课时',500,1,'2021-05-13 17:07:34','2021-05-13 17:07:51',0,66,0),
(35,32,28,'第三章第一课',500,1,'2021-05-13 17:09:52','2021-05-13 17:09:52',0,0,0),
(36,7,25,'06 | 案例分析：缓冲区如何让代码加速',5000,1,'2021-05-13 19:21:27','2021-05-14 13:55:49',0,6,0),
(37,20,29,'第四章第一课',500,1,'2021-05-13 21:16:53','2021-05-13 21:16:53',0,100,0),
(38,10,11,'02 | 功能需求：秒杀活动信息是如何管理的？',22,1,'2021-05-14 13:30:23','2021-05-14 13:30:23',0,1,0),
(39,10,11,'03 | 非功能需求：高可用、高性能、高并发的指标如何计算？',2,1,'2021-05-14 13:30:35','2021-05-14 13:30:35',0,2,0),
(40,10,0,'04 | 系统架构：如何设计秒杀的系统架构？',0,0,'2021-05-14 13:31:24','2021-05-14 13:31:24',0,0,0),
(41,10,30,'04 | 系统架构：如何设计秒杀的系统架构？',0,0,'2021-05-14 13:31:37','2021-05-14 13:33:27',0,0,1),
(42,10,30,'05 | 领域建模：DDD 原理及秒杀系统领域模型',22,1,'2021-05-14 13:31:50','2021-05-14 13:31:50',0,2,0),
(43,10,31,'06 | 云架构：基础设施是如何做到高可用的？',2,1,'2021-05-14 13:33:09','2021-05-14 13:33:09',0,0,0),
(44,10,31,'07 | 故障转移和恢复：如何通过主备切换缩减故障时间？',22,1,'2021-05-14 13:33:20','2021-05-14 13:33:20',0,2,0),
(45,7,25,'07 | 案例分析：无处不在的缓存，高并发系统的法宝',22,1,'2021-05-14 13:56:09','2021-05-14 13:56:09',0,22,0),
(46,7,0,'17 | 高级进阶：JVM 如何完成垃圾回收？',0,0,'2021-05-14 13:56:21','2021-05-14 13:56:21',0,15,0),
(47,7,32,'17 | 高级进阶：JVM 如何完成垃圾回收？',11,1,'2021-05-14 13:56:27','2021-05-14 13:56:27',0,0,0),
(48,7,32,'18 | 高级进阶：JIT 如何影响 JVM 的性能？',11,1,'2021-05-14 13:56:37','2021-05-14 13:56:37',0,2,0),
(49,7,32,'19 | 高级进阶：JVM 常见优化参数',19,1,'2021-05-14 13:56:51','2021-05-14 13:56:51',0,55,0),
(50,7,0,'20 | SpringBoot 服务性能优化',20,0,'2021-05-14 13:57:02','2021-05-14 13:57:02',0,16,0),
(51,7,33,'20 | SpringBoot 服务性能优化',20,1,'2021-05-14 13:57:07','2021-05-14 13:57:07',0,0,0),
(52,7,33,'21 | 性能优化的过程方法与求职面经总结',21,1,'2021-05-14 13:57:21','2021-05-14 13:57:21',0,2,0),
(53,7,34,'结束语 | 实践出真知',1,1,'2021-05-14 13:57:40','2021-05-14 13:57:40',0,0,0);

/*Table structure for table `course_media` */

DROP TABLE IF EXISTS `course_media`;

CREATE TABLE `course_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程媒体主键ID',
  `course_id` int(11) DEFAULT NULL COMMENT '课程Id',
  `section_id` int(11) DEFAULT NULL COMMENT '章ID',
  `lesson_id` int(11) DEFAULT NULL COMMENT '课时ID',
  `cover_image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面图URL',
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时长（06:02）',
  `file_edk` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体资源文件对应的EDK',
  `file_size` double(10,2) DEFAULT NULL COMMENT '文件大小MB',
  `file_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `file_dk` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体资源文件对应的DK',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除，0未删除，1删除',
  `duration_num` int(11) DEFAULT NULL COMMENT '时长，秒数（主要用于音频在H5控件中使用）',
  `file_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体资源文件ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_lessonid_channel_mediatype_idx` (`lesson_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `course_media` */

insert  into `course_media`(`id`,`course_id`,`section_id`,`lesson_id`,`cover_image_url`,`duration`,`file_edk`,`file_size`,`file_name`,`file_dk`,`create_time`,`update_time`,`is_del`,`duration_num`,`file_id`) values 
(5,7,7,8,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/7FDABE200A424897A7ED5CE05764BB4C-6-2.png?Expires=1594363749&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=dqBQJCvfJY1wDCBgCGnI5cPInww%3D','00:11','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlRjdaVUlmYTUwYWkwR3pwK1YzZENnUjExMnI1VkxiVFhBQUFBQUFBQUFBQ3FJN3pnZnFQUndad24rT2djTmM4MkxXb3ZXcDNNNkk0RENXeW9NRDVrZFNucHFiaUxRNm4r',1.90,'屏幕录制2020-07-10 13.48.08.mov','JPagaxcX6Ihpn5nu+dLi0Q==','2020-07-10 11:14:51','2020-07-10 13:49:14',0,11,'4f0dfb878a4d4d4881428b950396228a'),
(6,7,8,10,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/DBA8C56E2EA44F6382DCF5B7AD5763E6-6-2.png?Expires=1594356125&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=s5jKXcyQzw%2BjJKah75oBobYEy3g%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlNDlJL3pGM0dvS1IzSFhxMkFzNnYwcnhBelB6bUU3NENBQUFBQUFBQUFBQkxYTzQ4Q2JyK05XTHRoKzZiWmpoZG55azJ5NFVYUWtIRUhWb1BuQ3FZd2FPTVhPM2d6UDJ4',0.64,'测试视频课程.mp4','T3q/VVunsKwx7aNeRtaLGg==','2020-07-10 11:17:38','2020-07-10 11:42:10',0,8,'8dbf98ac948a4b389f99f17034c998cd'),
(7,8,9,12,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/07ED3325C001418AA46A95F88B1DA6C8-6-2.png?Expires=1594969610&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=biyZXbn1V2gY4GxmPiXKBME3E7I%3D','00:05','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlaWxjVHdDaW5NSDJGTWdqZnYxWFg1YWZ6OUJXc0cvS3FBQUFBQUFBQUFBQzVwV2NTQUh4NjhiaU1YZ1drYlFZQnlVKyt0YkdTRzdlVXJmRFVOZHRESWM3T3ZSdEwwM1hN',11.37,'test.mov','BRRHQV/DivcEwf0Zosn9dA==','2020-07-10 11:40:29','2020-07-17 14:06:55',0,5,'a029c496959a457e92eb9e4f480e0018'),
(8,7,8,11,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/8D2E8BB920F94ECAB32CCAA73222DF32-6-2.png?Expires=1594625842&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=H2rqXRF0a%2FjY1dnrVtACXinwBRI%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlQnBqQnBlU042WEd4UWx2eVEwV1hZS2JQdE5PS1dBYVpBQUFBQUFBQUFBQ0ViRHkrd0U1WWVLRGhObFJGOFE5OGJMYlppRzNwdnVWc2xuUnpINnVhN3dkay9QMDlucXhR',0.64,'测试视频课程.mp4','MWGs74Qco6LYjlCXc7ymEg==','2020-07-10 11:43:10','2020-07-13 14:37:27',0,8,'bb7d23a9334c4b07abb1187a2c61ce1f'),
(9,8,9,13,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/1B8791F4BC4B48B08A37C2B7B669FE52-6-2.png?Expires=1594356307&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=QISH8TpvWX%2F0G%2B%2F1rA0OJqTug3g%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlSHk2RWhDUURHejlyYzN1cnNNaE9ubG9jVUZlb2NTbFFBQUFBQUFBQUFBQjRRV0lGOHRvUGxIcCtINGhTdWxBR3JWV1ZmR3ZDT3R2YnVJcDlkS0NjSWxoL1EwMmpHcVdK',0.64,'测试视频课程.mp4','B0CqECTjmT1JeCVndYvXtg==','2020-07-10 11:45:13','2020-07-10 11:45:13',0,8,'717bc01edbb24283937d7fa903f06d60'),
(10,9,10,14,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/EEB28294E90F4D85A2609A2A978A9264-6-2.png?Expires=1594356669&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=wR9JpRJp6UMBs%2B55QSWSFYBM%2FCs%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlajlJcXU0RGYyc0V2blZ5c0pXMGVDaUdNT0ZVZlNYODVBQUFBQUFBQUFBQjFKWCtoZGU4WDZPTXM3RnZmanFXTWxzVVh0Uy80OEt6U2ttY1h1TDJURlJ6dlJ3V2ZpcjFT',0.64,'测试视频课程.mp4','6I5a1R2dG/WrUCQotk6Uxw==','2020-07-10 11:51:14','2020-07-10 11:51:14',0,8,'451d48ec785646b8ab1aa97ae3741100');

/*Table structure for table `course_section` */

DROP TABLE IF EXISTS `course_section`;

CREATE TABLE `course_section` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `section_name` varchar(255) NOT NULL DEFAULT '' COMMENT '章节名',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '章节描述',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_de` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `order_num` int(11) DEFAULT NULL COMMENT '排序字段',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态，0:隐藏；1：待更新；2：已发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `course_id_index` (`course_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `course_section` */

insert  into `course_section`(`id`,`course_id`,`section_name`,`description`,`create_time`,`update_time`,`is_de`,`order_num`,`status`) values 
(7,7,'开篇词 | Java 性能优化，是进阶高级架构师的炼金石','你好，我是李国。作为《Java 性能优化与面试 21 讲》这个课程的作者，我先来简单介绍下自己。\n\n我曾任京东金融、陌陌科技高级架构师，工作期间，我接触的都是比较底层的中间件和操作系统，涉及大量高并发场景下的调优工作，比如缓存优化、多线程优化、JVM 调优等。因此，我在高并发下的性能优化方面积累了丰富的实践经验，同时积累了一套自己独有的优化思路和优化技巧。我曾经优化过一个运行缓慢的复杂业务，单机 QPS 由原来的 2k/s 提升到了 2w/s，整个集群 QPS 达到近 100w/s。','2020-07-10 10:34:47','2021-05-14 13:52:25',0,1,0),
(8,7,'模块二：工具支持','模块二：工具支持','2020-07-10 10:35:05','2021-05-14 13:52:53',0,6,2),
(9,8,'开篇词','Vue的简单介绍','2020-07-10 11:21:35','2020-07-10 11:41:05',0,1,2),
(10,9,'1111','1111','2020-07-10 11:30:38','2020-07-10 11:51:46',0,1111,2),
(11,10,'模块一 秒杀需求和三高指标','模块一 秒杀需求和三高指标','2020-07-17 12:33:00','2021-05-14 13:31:12',0,0,2),
(12,0,'微服务架构','跟着药水一起学习如何使用微服务','2020-08-05 10:26:32','2020-08-05 10:26:32',0,0,0),
(13,8,'Vue路由','单页面应用导航','2020-08-05 10:28:40','2020-08-05 10:46:13',0,0,0),
(14,8,'VueCLI脚手架','快速搭建Vue项目','2020-08-05 10:30:06','2020-08-05 10:30:06',0,2,0),
(15,8,'VueCLI脚手架','快速搭建Vue项目','2020-08-05 10:47:08','2020-08-05 10:47:08',0,2,0),
(16,20,'Java入门','Java入门','2020-08-05 13:42:56','2020-08-05 13:42:56',0,2,0),
(17,20,'Java数据类型','Java基础1','2020-08-05 13:43:53','2021-04-19 23:23:10',0,2,0),
(18,20,'Java开发进阶','Java基础2','2020-08-05 13:43:57','2021-04-19 23:25:24',0,2,0),
(19,27,'第一集 超人来了','琦玉买菜回家','2020-08-13 14:14:08','2021-04-19 21:24:30',0,1,2),
(20,27,'第二集  超人打拳','琦玉打怪02','2020-08-13 14:15:50','2021-04-19 21:24:46',0,2,1),
(21,27,'第三集  超人打你胸口','琦玉玩牌','2020-08-13 14:22:17','2021-04-19 21:25:19',0,3,2),
(22,7,'模块一：性能优化方法论','模块一：性能优化方法论','2020-08-31 10:45:57','2021-05-14 13:52:42',0,4,0),
(23,27,'第四集01','一拳超人01','2020-08-31 10:50:26','2020-08-31 10:51:55',0,5,0),
(24,31,'阿斯蒂芬','阿斯蒂芬','2020-12-01 14:22:07','2020-12-01 14:22:46',0,78,1),
(25,7,'模块三：实战案例与高频面试点','模块三：实战案例与高频面试点','2021-05-10 00:00:35','2021-05-14 13:53:03',0,6,0),
(26,32,'第一章','第一章','2021-05-10 00:08:41','2021-05-13 17:07:40',0,66,0),
(27,32,'第二章','第二章test','2021-05-10 00:11:42','2021-05-13 17:08:36',0,80,0),
(28,32,'第三章','第三章','2021-05-13 17:09:30','2021-05-13 17:09:30',0,800,0),
(29,20,'第四章','第四章','2021-05-13 21:16:33','2021-05-13 21:16:33',0,100,0),
(30,10,'模块二 系统架构总体设计','','2021-05-14 13:31:06','2021-05-14 13:31:06',0,2,0),
(31,10,'模块三 高可用架构设计','模块三 高可用架构设计','2021-05-14 13:32:48','2021-05-14 13:32:48',0,3,0),
(32,7,'模块四：JVM 优化','模块五：特别放送','2021-05-14 13:53:31','2021-05-14 13:53:31',0,15,0),
(33,7,'模块五：特别放送','模块五：特别放送','2021-05-14 13:53:38','2021-05-14 13:53:38',0,16,0),
(34,7,'结束语','结束语','2021-05-14 13:53:52','2021-05-14 13:53:52',0,20,0);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NOT NULL COMMENT '父菜单id',
  `href` varchar(200) DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(200) DEFAULT NULL COMMENT '菜单图标',
  `name` varchar(200) DEFAULT NULL COMMENT '菜单名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `order_num` int(11) DEFAULT NULL COMMENT '排序号',
  `shown` tinyint(2) DEFAULT '1' COMMENT '是否展示',
  `level` int(11) NOT NULL COMMENT '菜单层级，从0开始',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='菜单表';

/*Data for the table `menu` */

insert  into `menu`(`id`,`parent_id`,`href`,`icon`,`name`,`description`,`order_num`,`shown`,`level`,`created_time`,`updated_time`,`created_by`,`updated_by`) values 
(1,-1,'','lock','权限管理','管理系统角色、菜单、资源',1,1,0,'2020-07-20 15:41:38','2020-08-21 11:46:17','system','system'),
(2,1,'Role','lock','角色列表','管理系统角色',1,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(3,1,'Menu','lock','菜单列表','管理系统菜单',2,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(4,1,'Resource','lock','资源列表','管理系统资源',3,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(5,-1,'Courses','film','课程管理','课程的新增、修改、查看、发布、上下架',2,1,0,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(6,-1,'Users','user','用户管理','用户的查询、禁用、启用',3,1,0,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(7,-1,'','setting','广告管理','广告、广告位管理',4,1,0,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(8,7,'Advertise','setting','广告列表','广告管理',1,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(9,7,'AdvertiseSpace','setting','广告位列表','广告位管理',2,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(10,1,'AllocMenu','setting','给角色分配菜单页面','给角色分配菜单页面路由',4,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(11,1,'AllocResource','setting','给角色分配资源页面','给角色分配资源页面路由',5,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(12,1,'AddMenu','setting','添加菜单页面','添加菜单页路由',6,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(13,1,'UpdateMenu','setting','更新菜单页面','更新菜单页路由',7,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(14,1,'ResourceCategory','setting','资源分类列表页面','资源分类列表页面路由',8,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(15,7,'AddAdvertise','setting','添加广告页面','添加广告页面路由',3,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(16,7,'UpdateAdvertise','setting','编辑广告页面','编辑广告页面路由',4,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(17,7,'AddAdvertiseSpace','setting','添加广告位页面','添加广告位页面路由',5,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(18,7,'UpdateAdvertiseSpace','setting','更新广告位页面','更新广告位页面路由',6,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(19,5,'CourseItem','setting','课程详情页面','课程详情页面路由',1,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(20,5,'CourseSections','setting','课时信息页面','课时信息页面路由',2,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),
(22,1,'addOrder','lock','订单管理修改','订单系统管理修改',1,0,0,'2020-08-10 20:32:41','2020-08-10 20:32:41','system','system'),
(23,5,'updateStatus修改','lock','课程管理状态修改','设置课程状态修改',3,0,0,'2020-08-11 04:32:41','2020-08-11 04:32:41','system','system'),
(24,5,'sectionAndLesson','setting','章节内容与课时内容管理','管理章节与课时内容内容',2,0,1,'2020-08-17 18:11:25','2020-08-17 18:15:00','system','system');

/*Table structure for table `promotion_ad` */

DROP TABLE IF EXISTS `promotion_ad`;

CREATE TABLE `promotion_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '广告名',
  `spaceId` int(11) DEFAULT NULL COMMENT '广告位id',
  `keyword` varchar(255) DEFAULT NULL COMMENT '精确搜索关键词',
  `htmlContent` text COMMENT '静态广告的内容',
  `text` varchar(255) DEFAULT NULL COMMENT '文字一',
  `link` varchar(255) DEFAULT NULL COMMENT '链接一',
  `startTime` datetime DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0 下线,1 上线',
  `priority` int(4) DEFAULT '0' COMMENT '优先级',
  `img` varchar(255) DEFAULT NULL COMMENT '广告图片地址',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `promotion_ad_SEG` (`spaceId`,`startTime`,`endTime`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1095 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `promotion_ad` */

insert  into `promotion_ad`(`id`,`name`,`spaceId`,`keyword`,`htmlContent`,`text`,`link`,`startTime`,`endTime`,`createTime`,`updateTime`,`status`,`priority`,`img`) values 
(1074,'加油训练营',2,NULL,NULL,'为了训练快来呀!!!!!加油!!!!','http://192.168.20.131/group1/M00/00/00/wKgUg2CUIbKAJim6AAFA4FyB6gA854.jpg','2020-08-17 11:21:27','2020-08-18 17:03:45','2020-07-14 14:28:34','2021-05-13 16:59:55',1,0,'http://192.168.20.131/group1/M00/00/00/wKgUg2CUIbKAJim6AAFA4FyB6gA854.jpg'),
(1075,'精选课程',2,NULL,NULL,NULL,'http://edufront.lagou.com/#/content?courseId=1','2020-06-29 17:03:25','2020-07-29 17:03:45','2020-07-14 14:28:34','2021-05-10 23:44:47',1,0,'http://localhost:8080/upload/1620661482765.png'),
(1076,'java训练营2',3,NULL,NULL,NULL,'http://edufront.lagou.com/#/content?courseId=1','2020-06-29 17:03:25','2020-07-29 17:03:45','2020-07-14 14:28:34','2021-05-10 23:46:29',1,0,'http://localhost:8080/upload/1620661587753.jfif'),
(1077,'轮播广告2',3,NULL,NULL,NULL,'http://edufront.lagou.com/#/content?courseId=1','2020-06-29 17:03:25','2020-07-29 17:03:45','2020-07-14 14:28:34','2020-08-31 19:46:47',1,0,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949624525374063.png'),
(1079,'微信朋友圈广告',171,NULL,NULL,'这个用于在微信朋友圈的小广告!','http://www.163.com111','2020-07-01 00:00:00','2020-08-28 00:00:00','2020-07-14 14:30:48','2021-05-09 18:29:28',0,2,'http://192.168.20.131/group1/M00/00/00/wKgUg2CXuXeARwNyAAEWM0GrtVk196.png'),
(1088,'冰淇淋套餐',NULL,NULL,NULL,NULL,'sdfdasdf','2020-01-01 00:00:00','2020-02-01 01:00:00','2020-07-17 10:07:39','2021-05-13 23:50:13',1,0,'http://localhost:8080/upload/1620662601709.jfif'),
(1089,'Java高级训练营',3,NULL,NULL,'广告保存','http://localhost:8080/upload/1597400130127.jpg','2020-08-14 18:15:15','2020-08-15 00:00:00',NULL,'2021-05-10 23:47:09',1,NULL,'http://localhost:8080/upload/1620661627023.jfif'),
(1090,'大数据高薪训练营',3,NULL,NULL,'添加广告添加广告添加广告添加广告添加广告','http://localhost:8080/upload/1597400677132.jpg','2020-08-14 18:24:09','2020-08-15 00:00:00','2020-08-14 18:25:02','2021-05-10 23:49:37',1,NULL,'http://localhost:8080/upload/1620661775653.jfif'),
(1091,'Python高级训练营01',2,NULL,NULL,'大家一起学Python1111','www.xxxx.com','2020-08-18 14:12:08','2020-08-20 00:00:00','2020-08-18 14:13:01','2021-05-10 23:42:54',1,NULL,'http://localhost:8080/upload/1620661373014.png'),
(1092,'Hadoop生态',2,NULL,NULL,'大数据Hadoop大数据Hadoop大数据Hadoop大数据Hadoop','www.xxx.com','2020-08-20 11:36:49','2020-08-21 00:00:00','2020-08-20 11:37:49','2021-05-10 23:48:37',1,NULL,'http://localhost:8080/upload/1620661715147.jfif'),
(1093,'Spark实时分析2期',160,NULL,NULL,'Spark实时分析Spark实时分析Spark实时分析Spark实时分析','www.1234.com','2020-08-20 11:42:20','2020-08-25 00:00:00','2020-08-20 11:42:50','2021-05-10 23:50:29',1,NULL,'http://localhost:8080/upload/1620661827143.jfif'),
(1094,'Python高级',1,NULL,NULL,'Python高级Python高级Python高级','www.xxnn.com','2020-08-31 20:46:26','2020-09-09 00:00:00','2020-08-31 20:46:55','2021-05-10 23:43:18',1,NULL,'http://localhost:8080/upload/1620661396833.png');

/*Table structure for table `promotion_space` */

DROP TABLE IF EXISTS `promotion_space`;

CREATE TABLE `promotion_space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `spaceKey` varchar(255) DEFAULT NULL COMMENT '广告位key',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `isDel` int(2) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `promotion_space_key_isDel` (`spaceKey`,`isDel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `promotion_space` */

insert  into `promotion_space`(`id`,`name`,`spaceKey`,`createTime`,`updateTime`,`isDel`) values 
(1,'首页顶部推荐位','666','2020-07-14 13:03:31','2021-02-27 02:15:44',0),
(2,'首页侧边广告位','888','2020-07-14 13:03:31','2020-07-17 11:53:02',0),
(3,'首页顶部轮播','999','2020-07-14 13:03:31','2020-07-17 13:13:03',0),
(160,'首页中部轮播图','123','2020-07-14 13:03:31','2020-08-17 14:19:23',0),
(161,'课程页面轮播图','456','2020-07-14 13:03:31','2020-08-17 14:19:47',0),
(162,'广告名称位置','789','2020-07-14 13:03:31','2020-08-31 13:58:50',0),
(163,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),
(164,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),
(165,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),
(166,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),
(167,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),
(168,'广告名称111','33333','2020-07-14 13:03:31','2020-07-14 13:03:49',0),
(169,'名称','abcd','2020-07-14 16:30:38','2020-07-14 16:31:31',0),
(170,'冰淇淋套餐',NULL,'2020-07-14 17:39:19','2020-07-14 17:40:24',0),
(171,'微信朋友圈','f22e659c-2077-409d-a07b-c1f4aed58e52','2020-07-15 12:18:47','2021-05-09 18:30:01',0),
(172,'首页底部页脚位置','a718dfbc-3d9b-40a0-be53-c57712b1a4e4','2020-08-17 13:56:41','2020-08-17 13:56:41',NULL),
(173,'搜素页面顶部','f22e659c-2077-409d-a07b-c1f4aed58e52','2020-08-18 13:55:14','2020-08-18 13:55:14',NULL),
(174,'首页底部位置001','0dcf0b86-7dba-47d9-9079-eef0e7ba6ab2','2020-08-31 14:30:27','2020-08-31 14:42:25',NULL),
(175,'生鲜超市广告位','23bcd11c-5f78-4d7a-b00b-5263f7c77849','2020-08-31 15:15:01','2020-08-31 15:16:11',NULL);

/*Table structure for table `resource` */

DROP TABLE IF EXISTS `resource`;

CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资源id',
  `name` varchar(200) NOT NULL COMMENT '资源名称',
  `url` varchar(200) NOT NULL COMMENT '资源url',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `description` varchar(500) DEFAULT NULL COMMENT '简介',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

/*Data for the table `resource` */

insert  into `resource`(`id`,`name`,`url`,`category_id`,`description`,`created_time`,`updated_time`,`created_by`,`updated_by`) values 
(1,'获取所有角色','/boss/role/all',1,'获取所有角色','2020-12-01 14:09:49','2020-12-01 14:09:49','system','system'),
(2,'给用户分配角色','/boss/role/alllocateUserRoles',1,'给用户分配角色','2021-04-19 20:21:40','2021-04-19 20:21:40','system','system'),
(3,'按条件查询角色','/boss/role/getRolePages',1,'按条件查询角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(4,'列出所有角色并标记用户是否拥有','/boss/role/getRolesWithUserPermission',1,'列出所有角色并标记用户是否拥有','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(5,'保存或者更新角色','/boss/role/saveOrUpdate',1,'保存或者更新角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(6,'查询用户角色','/boss/role/user/{userId}',1,'查询用户角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(7,'获取角色','/boss/role/{id}',1,'获取角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(8,'删除角色','/boss/role/{id}',1,'删除角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(9,'给角色分配菜单','/ssm-web/menu/allocateRoleMenus',2,'给角色分配菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(10,'获取所有菜单','/ssm-web/menu/getAll',2,'获取所有菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(11,'获取编辑菜单页面信息','/ssm-web/menu/getEditMenuInfo',2,'获取编辑菜单页面信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(12,'获取所有菜单并按层级展示','/ssm-web/menu/getMenuNodeList',2,'获取所有菜单并按层级展示','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(13,'按条件分页查询菜单','/ssm-web/menu/getMenuPages',2,'按条件分页查询菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(14,'获取角色拥有的菜单列表','/boss/menu/getRoleMenus',2,'获取角色拥有的菜单列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(15,'保存或新增菜单','/boss/menu/saveOrUpdate',2,'保存或新增菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(16,'是否显示开关','/boss/menu/switchShown',2,'是否显示开关','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(17,'根据ID查询菜单','/ssm-web/menu/{id}',2,'根据ID查询菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(18,'删除菜单','/boss/menu/{id}',2,'删除菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(19,'给角色分配资源','/boss/resource/allocateRoleResources',3,'给角色分配资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(20,'查询资源分类列表','/boss/resource/category/getAll',3,'查询资源分类列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(21,'保存或更新资源分类','/boss/resource/category/saveOrderUpdate',3,'保存或更新资源分类','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(22,'删除资源分类','/boss/resource/category/{id}',3,'删除资源分类','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(23,'获取所有资源','/boss/resource/getAll',3,'获取所有资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(24,'按条件分页查询资源','/boss/resource/getResourcePages',3,'按条件分页查询资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(25,'获取角色拥有的资源列表','/boss/resource/getRoleResources',3,'获取角色拥有的资源列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(26,'保存或者更新资源','/boss/resource/saveOrUpdate',3,'保存或者更新资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(27,'获取资源','/boss/resource/{id}',3,'获取资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(28,'删除资源','/boss/resource/{id}',3,'删除资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(29,'封禁用户','/boss/user/forbidUser',5,'封禁用户','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(30,'分页查询用户信息','/boss/user/getUserPages',5,'分页查询用户信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(31,'获取用户菜单和资源权限列表','/boss/permission/getUserPermissions',5,'获取用户菜单和资源权限列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(32,'查询用户角色','/ssm-web/role/user/{userId}',1,'查询用户角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(33,'课程上下架','/ssm-web/course/changeState',4,'课程上下架','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(34,'新建课程页面路由','/ssm-web/courses/new',4,'新建课程页面路由','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(35,'通过课程Id获取课程信息','/ssm-web/course/getCourseById',4,'通过课程Id获取课程信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(36,'分页查询课程信息','/ssm-web/course/getQueryCourses',4,'分页查询课程信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(37,'保存或者更新课程信息','/ssm-web/course/saveOrUpdateCourse',4,'保存或者更新课程信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(38,'上传图片','/ssm-web/course/upload',4,'上传图片','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(39,'保存活动商品','/ssm-web/activityCourse/save',4,'保存活动商品','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(40,'更新活动商品状态','/ssm-web/activityCourse/updateStatus',4,'更新活动商品状态','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(41,'获取章节','/ssm-web/course/section/getBySectionId',4,'获取章节','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(42,'获取章节和课时','/ssm-web/course/section/getSectionAndLesson',4,'获取章节和课时','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(43,'保存或更新章节','/ssm-web/course/section/saveOrUpdateSection',4,'保存或更新章节','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(44,'获取课时内容','/ssm-web/course/lesson/getById',4,'获取课时内容','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(45,'保存或更新课时','/ssm-web/course/lesson/saveOrUpdate',4,'保存或更新课时','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(50,'获取媒体信息','/ssm-web/course/upload/getMediaByLessonId.json',6,'获取媒体信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),
(55,'人员管理分配职位','/ssm-web/person',2,'人员管理分配职位','2020-09-02 16:11:24','2020-09-02 16:11:24','system','system'),
(60,'给人员分配权限','/ssm-web',7,'给人员分配权限','2020-09-02 16:42:42','2020-09-02 16:42:42','system','system');

/*Table structure for table `resource_category` */

DROP TABLE IF EXISTS `resource_category`;

CREATE TABLE `resource_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='资源分类表';

/*Data for the table `resource_category` */

insert  into `resource_category`(`id`,`name`,`sort`,`created_time`,`updated_time`,`created_by`,`updated_by`) values 
(1,'角色管理',1,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),
(2,'菜单管理',2,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),
(3,'资源管理',3,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),
(4,'课程管理',4,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),
(5,'用户管理',5,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),
(7,'广告管理',0,'2020-07-20 07:57:10','2020-07-20 07:57:10','15510792994','15510792994');

/*Table structure for table `role_menu_relation` */

DROP TABLE IF EXISTS `role_menu_relation`;

CREATE TABLE `role_menu_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关系表';

/*Data for the table `role_menu_relation` */

insert  into `role_menu_relation`(`id`,`menu_id`,`role_id`,`created_time`,`updated_time`,`created_by`,`updated_by`) values 
(22,1,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(23,2,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(24,3,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(25,4,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(26,6,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(27,10,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(28,11,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(29,12,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(30,13,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(31,14,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),
(340,1,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(341,2,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(342,3,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(343,4,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(344,10,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(345,11,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(346,12,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(347,13,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(348,14,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(349,22,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(350,5,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(351,19,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(352,20,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(353,21,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(354,23,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(355,24,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(356,6,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(357,7,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(358,8,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(359,9,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(360,15,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(361,16,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(362,17,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(363,18,1,'2021-04-19 12:17:10','2021-04-19 12:17:10','system','system'),
(370,7,4,'2021-04-19 19:31:53','2021-04-19 19:31:53','system','system'),
(371,8,4,'2021-04-19 19:31:53','2021-04-19 19:31:53','system','system'),
(372,9,4,'2021-04-19 19:31:53','2021-04-19 19:31:53','system','system'),
(373,15,4,'2021-04-19 19:31:53','2021-04-19 19:31:53','system','system'),
(374,16,4,'2021-04-19 19:31:53','2021-04-19 19:31:53','system','system'),
(375,17,4,'2021-04-19 19:31:53','2021-04-19 19:31:53','system','system'),
(376,18,4,'2021-04-19 19:31:53','2021-04-19 19:31:53','system','system'),
(377,5,3,'2021-04-19 19:31:57','2021-04-19 19:31:57','system','system'),
(378,19,3,'2021-04-19 19:31:57','2021-04-19 19:31:57','system','system'),
(379,20,3,'2021-04-19 19:31:57','2021-04-19 19:31:57','system','system'),
(380,21,3,'2021-04-19 19:31:57','2021-04-19 19:31:57','system','system'),
(381,23,3,'2021-04-19 19:31:57','2021-04-19 19:31:57','system','system'),
(382,24,3,'2021-04-19 19:31:57','2021-04-19 19:31:57','system','system'),
(383,5,7,'2021-04-19 19:34:24','2021-04-19 19:34:24','system','system'),
(384,19,7,'2021-04-19 19:34:24','2021-04-19 19:34:24','system','system'),
(385,20,7,'2021-04-19 19:34:24','2021-04-19 19:34:24','system','system'),
(386,21,7,'2021-04-19 19:34:24','2021-04-19 19:34:24','system','system'),
(387,23,7,'2021-04-19 19:34:24','2021-04-19 19:34:24','system','system'),
(388,24,7,'2021-04-19 19:34:24','2021-04-19 19:34:24','system','system'),
(389,7,8,'2021-05-13 23:44:07','2021-05-13 23:44:07','system','system'),
(390,8,8,'2021-05-13 23:44:07','2021-05-13 23:44:07','system','system'),
(391,9,8,'2021-05-13 23:44:07','2021-05-13 23:44:07','system','system'),
(392,15,8,'2021-05-13 23:44:07','2021-05-13 23:44:07','system','system'),
(393,16,8,'2021-05-13 23:44:07','2021-05-13 23:44:07','system','system'),
(394,17,8,'2021-05-13 23:44:07','2021-05-13 23:44:07','system','system'),
(395,18,8,'2021-05-13 23:44:07','2021-05-13 23:44:07','system','system');

/*Table structure for table `role_resource_relation` */

DROP TABLE IF EXISTS `role_resource_relation`;

CREATE TABLE `role_resource_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系id',
  `resource_id` int(11) NOT NULL COMMENT '资源id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COMMENT='角色和资源关系表';

/*Data for the table `role_resource_relation` */

insert  into `role_resource_relation`(`id`,`resource_id`,`role_id`,`created_time`,`updated_time`,`created_by`,`updated_by`) values 
(52,1,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(53,2,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(54,3,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(55,4,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(56,5,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(57,6,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(58,7,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(59,8,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(60,9,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(61,10,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(62,11,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(63,12,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(64,13,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(65,14,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(66,15,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(67,16,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(68,17,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(69,18,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(70,19,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(71,20,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(72,21,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(73,22,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(74,23,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(75,24,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(76,25,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(77,26,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(78,27,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(79,28,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(80,29,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(81,30,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(82,31,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(83,32,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),
(84,33,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(85,34,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(86,35,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(87,36,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(88,37,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(89,38,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(90,39,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(91,40,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(92,41,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(93,42,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(94,43,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(95,44,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(96,45,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),
(231,60,4,'2021-05-10 22:09:52','2021-05-10 22:09:52','system','system'),
(245,35,7,'2021-05-10 22:12:58','2021-05-10 22:12:58','system','system'),
(246,36,7,'2021-05-10 22:12:58','2021-05-10 22:12:58','system','system'),
(247,41,7,'2021-05-10 22:12:58','2021-05-10 22:12:58','system','system'),
(248,42,7,'2021-05-10 22:12:58','2021-05-10 22:12:58','system','system'),
(249,44,7,'2021-05-10 22:12:58','2021-05-10 22:12:58','system','system'),
(250,1,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(251,2,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(252,3,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(253,4,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(254,5,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(255,6,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(256,7,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(257,8,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(258,9,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(259,10,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(260,11,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(261,12,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(262,13,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(263,14,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(264,15,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(265,16,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(266,17,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(267,18,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(268,19,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(269,20,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(270,21,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(271,22,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(272,23,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(273,24,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(274,25,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(275,26,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(276,27,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(277,28,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(278,29,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(279,30,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(280,31,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(281,32,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(282,33,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(283,34,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(284,35,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(285,36,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(286,37,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(287,38,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(288,39,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(289,40,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(290,41,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(291,42,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(292,43,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(293,44,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(294,45,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(295,60,1,'2021-05-13 21:10:13','2021-05-13 21:10:13','system','system'),
(296,60,8,'2021-05-13 23:44:18','2021-05-13 23:44:18','system','system');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `code` varchar(100) NOT NULL COMMENT '角色code',
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(500) DEFAULT NULL COMMENT '简介',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

/*Data for the table `roles` */

insert  into `roles`(`id`,`code`,`name`,`description`,`created_time`,`updated_time`,`created_by`,`updated_by`) values 
(1,'ADMIN','超级管理员','后台管理员，初始拥有权限管理功能','2021-05-13 22:10:17','2021-05-13 21:09:16','system','system'),
(2,'AUTHORITY_MANAGER','权限管理员','管理权限相关数据，如角色、菜单、资源。可以给用户分配角色。','2021-05-13 21:09:17','2021-05-13 21:09:16','15510792994','15510792994'),
(3,'COURSE_MANAGER','课程管理员','管理课程信息，对课程、课时、章节进行管理。','2021-05-13 22:12:19','2021-05-13 21:09:16','15510792994','15510792994'),
(4,'AD_MANAGER','广告管理员','管理广告、广告位信息','2021-05-12 20:09:16','2021-05-13 21:09:16','15510792994','15510792994'),
(7,'UESR','普通用户','普通用户只能查询','2021-05-13 22:09:21','2021-05-13 21:09:16','system','system'),
(8,'1','test','test\n','2021-05-13 21:09:16','2021-05-13 21:09:16','system','system');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_id` int(11) DEFAULT '0' COMMENT '课程ID',
  `teacher_name` varchar(255) DEFAULT NULL COMMENT '讲师姓名',
  `position` varchar(100) DEFAULT '' COMMENT '职务',
  `description` text COMMENT '讲师介绍',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_courseId` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`course_id`,`teacher_name`,`position`,`description`,`create_time`,`update_time`,`is_del`) values 
(158,7,'imlty','前京东高级架构师','多家平台架构','2020-07-10 10:33:56','2021-05-14 13:51:24',0),
(159,8,'那朋12','前京东资深12','掌握框架原理，精通经典应用场景','2020-07-10 11:20:43','2020-09-01 11:12:08',0),
(160,9,'秒杀11','秒杀','秒杀1','2020-07-10 11:24:31','2020-07-10 11:24:31',0),
(161,10,'React 入门','React 入门','React 入门','2020-07-17 12:32:43','2021-05-14 13:29:29',0),
(162,15,'维尼','高级讲师','多年企业实战经验','2020-08-04 15:15:06','2020-08-04 15:15:06',0),
(163,16,'药水哥','超级讲师','多年药水企业实战经验','2020-08-04 15:23:17','2020-08-04 16:54:00',0),
(164,17,'药水哥','超级讲师','多年药水企业实战经验','2020-08-04 15:29:26','2021-04-19 23:16:36',0),
(165,18,'药水哥','超级讲师','多年药水企业实战经验','2020-08-04 16:54:45','2021-04-19 23:17:13',0),
(166,19,'药水哥aaa','超级讲师aa','多年药水企业实战经验aaa','2020-08-04 16:56:41','2020-08-04 16:56:41',0),
(167,20,'药水哥aaa','超级讲师aa','多年药水企业实战经验aaa','2020-08-05 13:42:08','2021-05-14 13:49:30',0),
(168,21,'一拳超人一拳超人','一拳超人','一拳超人','2020-08-12 17:34:26','2020-08-12 17:34:26',0),
(169,22,'岸本齐史','高级讲师','高级讲师','2020-08-12 17:44:39','2020-08-12 17:44:39',0),
(170,23,'卡卡西','高级讲师','木叶 卡卡西','2020-08-12 18:08:57','2020-08-12 18:08:57',0),
(171,24,'药水哥','超级讲师','多年药水企业实战经验','2020-08-12 18:12:44','2020-08-12 18:12:44',0),
(172,25,'一拳超人一拳超人','一拳超人','一拳超人','2020-08-12 18:13:57','2020-08-12 18:13:57',0),
(173,26,'岸本齐史','高级讲师','高级讲师','2020-08-12 18:15:16','2020-08-12 18:15:16',0),
(174,27,'琦玉','高级讲师','一拳超人','2020-08-12 18:19:16','2021-05-10 23:58:16',0),
(175,28,'大是大非三11111','大是大非三1111','大是大非三111','2020-08-12 18:53:42','2020-08-12 18:55:41',0),
(176,29,'好大哥','高级讲师','溜达秘籍溜达秘籍','2020-08-14 18:08:24','2020-08-14 18:08:24',0),
(177,30,'燕寄雨','掌门','天下刀宗天下刀宗天下刀宗','2020-08-19 11:53:13','2020-08-19 11:54:02',0),
(178,31,'佟湘玉','高级讲师','高级讲师','2020-08-28 14:31:06','2020-08-28 18:08:50',0),
(179,32,'imlty','imlty','imlty','2021-05-10 00:08:04','2021-05-14 13:27:57',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(255) NOT NULL COMMENT '用户昵称',
  `portrait` varchar(255) DEFAULT NULL COMMENT '用户头像地址',
  `phone` varchar(255) NOT NULL COMMENT '注册手机',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码（可以为空，支持只用验证码注册、登录）',
  `reg_ip` varchar(255) DEFAULT NULL COMMENT '注册ip',
  `account_non_expired` bit(1) DEFAULT b'1' COMMENT '是否有效用户',
  `credentials_non_expired` bit(1) DEFAULT b'1' COMMENT '账号是否未过期',
  `account_non_locked` bit(1) DEFAULT b'1' COMMENT '是否未锁定',
  `status` varchar(20) NOT NULL DEFAULT 'ENABLE' COMMENT '用户状态：ENABLE能登录，DISABLE不能登录',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_time` datetime NOT NULL COMMENT '注册时间',
  `update_time` datetime NOT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_phone_is_del` (`phone`,`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100030027 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`portrait`,`phone`,`password`,`reg_ip`,`account_non_expired`,`credentials_non_expired`,`account_non_locked`,`status`,`is_del`,`create_time`,`update_time`) values 
(100030011,'15321919666','http://localhost:8080/upload/1620662601709.jfif','15321919666','ab21648629da590614b619b6da3be3fd',NULL,'','','','DISABLE','\0','2020-07-10 10:19:15','2020-07-10 10:19:15'),
(100030017,'15811111111','http://192.168.20.131/group1/M00/00/00/wKgUg2CZWBKABBjGAAAcaB7wMso42.jfif','15811111111','ab21648629da590614b619b6da3be3fd',NULL,'','','','DISABLE','','2020-07-10 11:25:45','2020-07-13 10:56:31'),
(100030019,'15588886234','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943594999396473.png','15588886234','ab21648629da590614b619b6da3be3fd',NULL,'','','','ENABLE','\0','2020-07-10 12:20:16','2020-07-10 12:20:16'),
(100030020,'18211111111','http://192.168.20.131/group1/M00/00/00/wKgUg2CZWBKABBjGAAAcaB7wMso42.jfif','18211111111','ab21648629da590614b619b6da3be3fd',NULL,'','','','ENABLE','\0','2020-07-10 13:57:41','2020-07-10 13:57:41'),
(100030021,'15811112222','http://192.168.20.131/group1/M00/00/00/wKgUg2CZWBKABBjGAAAcaB7wMso42.jfif','15811112222','ab21648629da590614b619b6da3be3fd',NULL,'','','','ENABLE','\0','2020-07-13 11:35:20','2020-07-13 11:35:20'),
(100030022,'15811111122','http://192.168.20.131/group1/M00/00/00/wKgUg2CZWBKABBjGAAAcaB7wMso42.jfif','15811111122','ab21648629da590614b619b6da3be3fd',NULL,'','','','ENABLE','\0','2020-07-13 17:43:52','2020-07-13 17:43:52'),
(100030026,'13621531903','http://192.168.20.131/group1/M00/00/00/wKgUg2CZWBKABBjGAAAcaB7wMso42.jfif','13621531903','ab21648629da590614b619b6da3be3fd',NULL,'','','','ENABLE','\0','2020-08-24 17:23:24','2020-08-24 17:23:27');

/*Table structure for table `user_phone_verification_code` */

DROP TABLE IF EXISTS `user_phone_verification_code`;

CREATE TABLE `user_phone_verification_code` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) DEFAULT '' COMMENT '手机号',
  `verification_code` varchar(15) DEFAULT '' COMMENT '验证码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `isCheck` bit(1) DEFAULT b'0' COMMENT '验证码是否校验过',
  `check_times` int(2) DEFAULT '0' COMMENT '校验次数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `l_phone_verification_code_ind_01` (`phone`,`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33317 DEFAULT CHARSET=utf8;

/*Data for the table `user_phone_verification_code` */

insert  into `user_phone_verification_code`(`id`,`phone`,`verification_code`,`create_time`,`isCheck`,`check_times`) values 
(33305,'18201288775','111111','2020-07-03 23:59:31','',80),
(33306,'008615321919577','472148','2020-07-17 16:41:21','\0',0),
(33307,'008615321919577','254709','2020-07-17 16:53:02','\0',0),
(33308,'0086','149696','2020-07-17 17:33:19','\0',0),
(33309,'0086','164595','2020-07-17 18:00:48','\0',0),
(33310,'008615321919577','994241','2020-07-17 18:01:27','\0',0),
(33311,'008615321919577','775431','2020-07-17 18:04:31','\0',0),
(33312,'008615321919577','610538','2020-07-17 18:06:45','\0',0),
(33313,'008615321919577','317040','2020-07-17 18:17:05','\0',0),
(33314,'008618201288770','956444','2020-07-23 16:18:56','',2),
(33315,'18201288771','029570','2020-07-23 18:01:20','',2),
(33316,'18201288771','058365','2020-07-23 19:11:35','',2);

/*Table structure for table `user_role_relation` */

DROP TABLE IF EXISTS `user_role_relation`;

CREATE TABLE `user_role_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关系表';

/*Data for the table `user_role_relation` */

insert  into `user_role_relation`(`id`,`user_id`,`role_id`,`created_time`,`updated_time`,`created_by`,`updated_by`) values 
(3,100030014,1,'2020-07-20 07:57:58','2020-07-20 07:57:58','15510792995','15510792995'),
(15,100030022,7,'2020-09-09 14:38:35','2020-09-09 14:38:35','system','system'),
(17,100030021,7,'2020-09-09 15:27:47','2020-09-09 15:27:47','system','system'),
(18,100030026,1,'2020-09-09 15:45:18','2020-09-09 15:45:18','system','system'),
(23,100030016,4,'2020-12-01 12:48:13','2020-12-01 12:48:13','system','system'),
(24,100030012,7,'2021-04-19 19:32:44','2021-04-19 19:32:44','system','system'),
(26,100030019,3,'2021-05-10 21:09:47','2021-05-10 21:09:47','system','system'),
(27,100030011,3,'2021-05-13 21:11:32','2021-05-13 21:11:32','system','system'),
(28,100030020,8,'2021-05-13 23:44:29','2021-05-13 23:44:29','system','system');

/*Table structure for table `user_weixin` */

DROP TABLE IF EXISTS `user_weixin`;

CREATE TABLE `user_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `union_id` varchar(255) NOT NULL DEFAULT '' COMMENT '认证id,微信对应的时unionId',
  `open_id` varchar(255) DEFAULT NULL COMMENT 'openId',
  `nick_name` varchar(255) NOT NULL COMMENT '昵称',
  `portrait` varchar(512) DEFAULT NULL COMMENT '头像',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `sex` int(11) DEFAULT NULL COMMENT '性别, 1-男，2-女',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `oauthId_and_oauthType_unique` (`union_id`,`open_id`,`is_del`) USING BTREE,
  UNIQUE KEY `userId_and_oauthType_unique_index` (`user_id`,`open_id`,`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=506562 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `user_weixin` */

insert  into `user_weixin`(`id`,`user_id`,`union_id`,`open_id`,`nick_name`,`portrait`,`city`,`sex`,`create_time`,`update_time`,`is_del`) values 
(506561,100030019,'oXEX_svcbl-mCDhWloqlEFNVHgP8','oGYgl0u0vZMKVAByQ3hR0i7jpKew','leo','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epKy1c3YeeI5vRqSxqDkaYc9XDuPao1BRLFKGf65SiaRIFqHTpeJg90RfrCXCo7WkicpfsPdKTdNTpA/132','',1,'2020-07-23 19:12:21','2020-07-23 19:12:21','\0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
