#!/bin/bash
set -eEu
set -o pipefail

# shellcheck disable=SC1091
. test/vars.bash

# Ensure dependencies are up-to-date.
. ci/bootstrap.sh

# Run various checks unrelated to Puppet.
run_precommit

# Check for whitespace errors.
check_whitespace

# Run unit and acceptance tests.
bats test/*.bats
