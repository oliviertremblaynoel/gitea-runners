#!/bin/bash
## Lint
pre-commit run --all-files -v

## Force push amend all
git add .
git commit --amend --no-edit
git push -f
