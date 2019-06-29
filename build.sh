#!/usr/bin
p=$(cd `dirname $0`;pwd)
os=$(uname)

output="$p/output"
proto="$p/proto"

rm -rf $output/*

mkdir -p $output/php $output/go/ $output/objc $output/java $output/js

#编译
cd $p/proto/
protoc --php_out=$output/php --go_out=$output/go/ --objc_out=$output/objc --java_out=$output/java  --js_out=$output/js *.proto

#修改GPBMetadata命名空间
cd $output/php
mv GPBMetadata Sample/Model/

if [ "$os" == "Darwin" ]; then
    find . -name '*.php' ! -name example.php -exec sed -i "" -e 's#GPBMetadata#Sample\\Model\\GPBMetadata#g' -e 's#\\Sample\\Model\\GPBMetadata\\Google#\\GPBMetadata\\Google#g' {} \;
elif [ "$os" == "Linux" ]; then
    find . -name '*.php' ! -name example.php -exec sed -i -e 's#GPBMetadata#Sample\\Model\\GPBMetadata#g' -e 's#\\Sample\\Model\\GPBMetadata\\Google#\\GPBMetadata\\Google#g' {} \;
else
    echo "unkonw os: $os"
    exit 1
fi
cd - 

echo "done";