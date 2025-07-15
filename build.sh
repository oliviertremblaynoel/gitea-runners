#!/bin/bash

# shellcheck source=/dev/null
source .env

PROJECT=gitea-runner-ansible
docker build . -t "$PROJECT"
docker tag $PROJECT:latest
docker push "$GITHUB_USERNAME"/"$PROJECT":latest
