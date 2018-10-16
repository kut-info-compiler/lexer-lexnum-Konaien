#!/bin/bash

TEST_DIR=../lexer-lexnum-00test
export TEST_DIR

TEST_SH=$TEST_DIR/test.sh
TEST_REPO=https://github.com/kut-info-compiler/lexer-lexnum-00test.git

if [ \! -x $TEST_SH ]; then
    echo
    echo "ERROR"
    echo "Cannot find ${TEST_SH}."
    echo "Clone the testing repository in the parent dir."
    echo ""
    echo "  > cd .."
    echo "  > git clone ${TEST_REPO}"
    echo ""
    exit
fi    

exec $TEST_SH
