#!/bin/bash
set -e

echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

sh -c "$*"

echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"