#!/bin/sh -ex
make get
make all
./run-checklist.py
aws s3 sync dist s3://static-dev.mapzen.com/documentation/
aws s3 sync dist $AWS_DESTINATION
