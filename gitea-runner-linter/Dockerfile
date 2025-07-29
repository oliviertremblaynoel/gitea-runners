FROM golang:alpine AS builder
RUN go install github.com/rhysd/actionlint/cmd/actionlint@latest

# hadolint ignore=DL3007
FROM docker.gitea.com/runner-images:ubuntu-latest

COPY --from=builder /go/bin/actionlint /usr/local/bin/actionlint

LABEL \
  title="Gitea Runner with Linting tools" \
  authors="Olivier Tremblay-Noel" \
  url="https://hub.docker.com/repository/docker/oliviertremblaynoel/gitea-runner-linter" \
  source="https://github.com/oliviertremblaynoel/gitea-runners"

# hadolint ignore=DL3008,DL3015,DL3013,DL3016,DL4006
RUN apt-get update && apt-get install -y --no-install-recommends \
      ansible-lint \
      npm \
    && npm install -g dclint \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*
