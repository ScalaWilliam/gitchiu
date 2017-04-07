#!/bin/bash
touch lambda.zip
aws s3api put-object --bucket gitshu --key fn/gitshu-$(git describe --tags).zip --body lambda.zip --acl public-read
aws s3api put-object --bucket gitshu --key fn/gitshu-latest.zip --body lambda.zip --acl public-read

