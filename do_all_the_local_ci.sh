#!/usr/bin/env bash

# Echo with pretty colours
black=0; red=1; green=2; yellow=3; blue=4; pink=5; cyan=6; white=7;
cecho () {
  local _color=$1; shift
  echo -e "$(tput setaf $_color)+++ $@$(tput sgr0)"
}

cecho $blue "CircleCI"
cecho $blue "Validating CircleCI configuration..."
circleci config validate
cecho $blue "Running CircleCI test job locally..."
circleci local execute --job test
cecho $blue "Running CircleCI build job locally..."
circleci local execute --job build

cecho $pink "Travis CI"
cecho $pink "Validating Travis CI configuration..."
travis lint

cecho $green "Buildkite"
cecho $green "Running Buildkite pipeline locally..."
bk run