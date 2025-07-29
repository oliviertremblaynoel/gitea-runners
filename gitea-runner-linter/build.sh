#!/bin/bash

# # shellcheck source=/dev/null
# source .env

PROJECT=gitea-runner-linter
docker build . -t "$PROJECT"
# docker tag $PROJECT:latest
# docker push "$GITHUB_USERNAME"/"$PROJECT":latest
