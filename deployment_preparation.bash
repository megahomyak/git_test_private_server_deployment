#!/bin/bash
# This script is supposed to be replayable
ssh orange << EOF
mkdir -p git_test_private_server_deployment
cd git_test_private_server_deployment
if [ ! -d .git ]
    git init --bare
    git remote set-url origin --push --add orange:git_test_private_server_deployment
fi
EOF
