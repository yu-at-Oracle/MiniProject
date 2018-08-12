#!/bin/bash

source /opt/openjdk-common.sh

run mkdir -p $JAVA_BUILD_DIR

pushd $JAVA_BUILD_DIR

run tar xzf $ARCHIVE_DIR/$BASE_FILENAME
for i in $SUB_PROJECTS; do
  if [ ! -d ${REPOSITORY_NAME}-${BASE_FILENAME%.tar.gz}/$i ];then
    if [ ! -d ${i}-${BASE_FILENAME%.tar.gz} ];then
      run tar xzf $ARCHIVE_DIR/${i}-$BASE_FILENAME
    fi
    run mv ${i}-${BASE_FILENAME%.tar.gz} ${REPOSITORY_NAME}-${BASE_FILENAME%.tar.gz}/$i
  fi
done

pushd ${REPOSITORY_NAME}-${BASE_FILENAME%.tar.gz}

run bash configure --prefix=/usr/local --with-milestone=fcs --with-update-version=$JAVA_UPDATE --with-build-number=$JAVA_BUILDNUM
run make all
run sudo make install

popd
popd

run sudo rm -rf $JAVA_BUILD_DIR

