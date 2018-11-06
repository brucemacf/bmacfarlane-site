#!/bin/bash
echo ">>>> In run_build_and_deploy.sh"
yarn build
cd build/
aws s3 sync . "s3://bmacfarlane-website" --delete
