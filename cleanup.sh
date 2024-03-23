#!/bin/bash

cd /usr/share/keyrings
rm -rf docker
rm -rf kubernetes

cd /etc/apt/keyrings
rm *
cd ../sources.list.d
rm *
