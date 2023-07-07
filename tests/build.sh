#!/usr/bin/env bash
cp -r ./2023.05/apache/* ./
docker buildx build . --output type=docker,name=elestio4test/friendica:latest | docker load