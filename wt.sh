#!/usr/bin/env bash

cd "/home/deva/Documents/dpd-db/"

poetry run python web_app/app.py &

# firefox http://127.0.0.1:8000/
