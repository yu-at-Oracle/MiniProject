#!/bin/sh

source /opt/openjdk-common.sh

mkdir -p $ARCHIVE_DIR
pushd $ARCHIVE_DIR

curl -O ${URL} || exit 1

for i in $SUB_PROJECTS; do
  SUB_URL=$BASE_URL/$i/archive/$BASE_FILENAME
  echo "Downloading $SUB_URL"
  if [ ! -f "${i}-$BASE_FILENAME" ];then
    curl -o ${i}-$BASE_FILENAME -L "$SUB_URL" || (rm "$FILENAME"; exit 1)
  fi
done

popd

