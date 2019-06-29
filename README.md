# protobuf-sample

Protobuf是一种平台无关、语言无关、可扩展且轻便高效的序列化数据结构的协议，可以用于网络通信和数据存储。

官方文档：https://github.com/protocolbuffers/protobuf

## 安装

安装清单一览：

- protoc
- 各编程语言对应的protobuf库

### 安装protoc

为了将proto文件转成编程语言代码，需要安装编译工具。

地址：https://github.com/protocolbuffers/protobuf/releases/

``` bash
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.8.0/protoc-3.8.0-linux-x86_64.zip
unzip protoc-3.8.0-linux-x86_64.zip
cp bin/protoc /usr/bin/
cp -r include/google /usr/include/
```
> 注：最后一行是为了将proto的一些库复制到系统，例如`google/protobuf/any.proto`，如果不复制，编译如果用了里面的库例如Any，会提示：protobuf google.protobuf.Any not found 。

然后命令行输入 `protoc`可以查看帮助。  

假设有一个 `.proto`格式的文件，需要编译成其它语言代码，以PHP为例则是：
``` bash
mkdir php
protoc --php_out=php  *.proto
```

其中`--php_out=php`表示编译成PHP代码，放在`php`目录。`protof`还支持：
``` bash
$ protoc | grep "=OUT_DIR"
  --cpp_out=OUT_DIR           Generate C++ header and source.
  --csharp_out=OUT_DIR        Generate C# source file.
  --java_out=OUT_DIR          Generate Java source file.
  --js_out=OUT_DIR            Generate JavaScript source.
  --objc_out=OUT_DIR          Generate Objective C header and source.
  --php_out=OUT_DIR           Generate PHP source file.
  --python_out=OUT_DIR        Generate Python source file.
  --ruby_out=OUT_DIR          Generate Ruby source file.
```

后面有示例说明。  

**golang 代码编译支持**   
`protoc --help` 并没有`--go_out`参数说明， 如需编译golang目标代码，请执行以下步骤:  

1、安装golang环境：`yum install golang`，其它系统查看 https://studygolang.com/dl (已安装请跳过) 
2、`go get github.com/golang/protobuf/protoc-gen-go`；    
3、复制扩展工具到`/usr/bin`:
``` bash
cp `go env|grep 'GOPATH'|sed -e 's/GOPATH="//' -e 's/"//'`/bin/protoc-gen-go /usr/bin/
```
4、编译go目标代码: `protoc --go_out=./go *.proto`。  

### PHP扩展安装

php可以安装c扩展版本或者纯php代码版本。

#### C扩展版本

1、下载扩展源码：   
``` bash
wget https://pecl.php.net/get/protobuf-3.8.0.tgz
tar zxf protobuf-3.8.0.tgz
cd protobuf-3.8.0
phpize
./configure
make
sudo make install
```
或者直接使用 pecl 安装：
``` bash
pecl install protobuf-3.8.0
```

2、 输入 `php -i|grep php.ini` 查看`php.ini`的路，修改`php.ini`, 增加:  
``` ini
extension=protobuf.so
```

3、检查是否安装成功：`php --ri protobuf`，安装成功会显示版本号。  

## 运行示例

``` bash
$ php tests/user.php 
Sample\Model\UserList Object
/work/git/protobuf-sample/tests/user.php:15:
int(1)
Google\Protobuf\Internal\RepeatedField Object
(
)
Sample\Model\User Object
1
{"list":[{"id":1,"name":"test"}],"page":1,"limit":5}
```