# Do Better As Code: Local CI

## The robot

This repository contains a simple Rust program, a robot which goes "beep boop".

There is one unit test for the robot, to ensure it goes "beep boop".

## Continuous Integration

This repository has a simple pipeline that runs the tests and builds the release binary.

This pipeline is configured using pipelines-as-code with the following providers:

### CircleCI

#### Configuration

**Config file**: `.circleci/config.yml`  
**Config details**: Two jobs in one workflow running in a Docker container

#### Local CI instructions

Install and configure the [CircleCI local CLI](https://circleci.com/docs/2.0/local-cli/).

To validate the configuration:  
`circleci config validate`

To see the expanded source configuration  
(including defaults and additional information provided by CircleCI):  
`circleci config process .circleci/config.yml`

To run the test job locally and ensure that it runs correctly:  
`circleci local execute --job test`

To run the build job locally and ensure that it runs correctly:  
`circleci local execute --job build`