#!/usr/bin/env bash

set -e

cd "/home/deva/Documents/rus_dpd_git/rus-digitalpalidictionary"

./build.sh

./push_origin.sh
