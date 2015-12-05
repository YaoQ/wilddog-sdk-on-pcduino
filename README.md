#WildDog SDK on pcDuino
WildDog C/嵌入式SDK是Wilddog云在C/嵌入式场景下的客户端，使用者调用api接口即可实现和云端的通信、消息订阅功能。

本代码是通过在Wilddog C/嵌入式SDK上精简后，结合了pcDuino上c_environment SDK，可以运行在如pcDuino3、pcDuino8 Uno等平台上。

##1. 目录结构

	├── docs
	├── examples
	├── include
	├── platform
	├── project
	├── src
	├── tests
	└── tools

####docs
SDK文档。

####examples
pcDuino平台下的demo例子。

####include
目录中各个文件内容如下：

*	wilddog.h : 基本数据结构和宏定义
*	wilddog_api.h : api函数声明
*	wilddog_config.h : 用户配置宏定义
*	wilddog_port.h : 平台相关接口函数
*	widdog_debug.h : debug相关函数声明

####platform

####project

demo例子的工程目录。

####src

平台无关目录。

####tests

测试文件。

####tools

各个平台使用的一些工具。

----
##2. 快速入门

编译SDK，编译后的库文件在lib目录下

	$ cd wilddog-client-c
	$ make 

编译示例，编译后的可执行文件在bin目录下

	$ make example

向应用URL存储一个key-value结构的数据

	$ ./bin/demo setValue -l <应用URL> --key a --value 1 
获取应用URL的数据

	$ ./bin/demo getValue -l <应用URL>
执行结果：

	"/":{"a":"1"}


----
##3. 移植说明

SDK已经在WICED、ESP8266、庆科MICO、树莓派、arduino yun、openwrt中成功移植，可参考docs目录。

----
##4. 其他参考

SDK 文档: https://z.wilddog.com/device/quickstart

Wiced 文档和sdk获取:http://www.broadcom.com/products/wiced/wifi/

espressif sdk获取: http://espressif.com/zh-hans/%E6%9C%80%E6%96%B0sdk%E5%8F%91%E5%B8%83/

庆科 SDK获取：http://mico.io/wiki/doku.php
