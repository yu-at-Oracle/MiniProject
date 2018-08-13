<b>課題1-2</b>

*dockerfile

dockerfile.centos -> CentOS7 ベースのdockerfile

実行手順

docker build --rm -f dockerfile.centos -t song/openjdk:0.1 .

docker run -it song/openjdk:0.1 /bin/bash

*jdk ビルドスクリプト

common.sh

get-openjdk.sh

build-openjdk.sh

openjdk.build (テストで使用したsimpleなビルドスクリプト, dockerfile内ではコメントアウト)

<b>課題2-2</b>

*GraalVM操作ログ

GraalVM.log
