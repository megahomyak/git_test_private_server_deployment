#!/bin/bash
ssh orange << EOF
git init git_test_private_server_deployment
cd git_test_private_server_deployment
git config receive.denyCurrentBranch updateInstead
EOF
git remote add deployment orange:git_test_private_server_deployment
git push deployment
ssh orange << EOF
cd git_test_private_server_deployment
# Build and start the container, for example
EOF
