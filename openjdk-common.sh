ARCHIVE_DIR=/build/openjdk-archives
BUILD_DIR=/build/openjdk-build

JAVA_UPDATE=71
JAVA_BUILDNUM=15
JAVAFX_BUILDNUM=${JAVA_BUILDNUM}

REPOSITORY_NAME=jdk8u-dev
BASE_URL=http://hg.openjdk.java.net/jdk8u/${REPOSITORY_NAME}
BASE_FILENAME=jdk8u${JAVA_UPDATE}-b${JAVA_BUILDNUM}.tar.gz

URL=$BASE_URL/archive/$BASE_FILENAME
SUB_PROJECTS="corba hotspot jdk jaxws jaxp langtools nashorn"

JAVA_BUILD_DIR=$BUILD_DIR/openjdk8u${JAVA_UPDATE}

function run() {
    echo "$@"
    "$@" || exit 1
}

