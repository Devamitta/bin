#!/usr/bin/env bash

cd "/home/deva/Documents/dpd-db/"

uv run python -c "from tools.fast_api_utils import start_dpd_server; start_dpd_server()"

# firefox http://127.1.1.1:8080/
