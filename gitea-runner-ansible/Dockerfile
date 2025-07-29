# hadolint ignore=DL3007
FROM docker.gitea.com/runner-images:ubuntu-latest

# hadolint ignore=DL3008,DL3015
RUN apt-get update ; \
    apt-get install -y \
        ansible \
        sshpass \
        ; \
    rm -rf \
        /tmp/* \
        ;

LABEL \
    title="Gitea Ansible Runner" \
    authors="Olivier Tremblay-Noel" \
    url="https://hub.docker.com/repository/docker/oliviertremblaynoel/gitea-runner-ansible" \
    source="https://github.com/oliviertremblaynoel/gitea-runners"
