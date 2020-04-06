#!/bin/bash -e
# serverspec.sh - RSpec tests for servers
echo "Installing serverspec"
gem install serverspec
echo "Running integration tests for ami"
cd /tmp/tests && rake spec

