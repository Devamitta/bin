#!/usr/bin/env bash

echo -e "\033[1;33m We are going to commit and push correction and additions to git \033[0m"

cd "/home/deva/Documents/dpd-db/"

uv run bash dps/scripts/bash/auto_commit.sh