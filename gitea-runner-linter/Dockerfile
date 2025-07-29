# hadolint ignore=DL3007
FROM docker.gitea.com/runner-images:ubuntu-latest

LABEL \
  title="Gitea Runner with Linting tools" \
  authors="Olivier Tremblay-Noel" \
  url="https://hub.docker.com/repository/docker/oliviertremblaynoel/gitea-runner-linter" \
  source="https://github.com/oliviertremblaynoel/gitea-runners"

# hadolint ignore=DL3008,DL3015,DL3013,DL3016,DL4006
RUN apt-get update && apt-get install -y --no-install-recommends \
      curl \
      python3-pip \
      npm \
      sshpass \
    && pip3 install --no-cache-dir ansible-lint \
    && npm install -g dclint \
    && curl -sSL https://github.com/rhysd/actionlint/releases/latest/download/actionlint_linux_amd64.tar.gz \
      | tar -xz -C /usr/local/bin \
    && chmod +x /usr/local/bin/actionlint \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*
