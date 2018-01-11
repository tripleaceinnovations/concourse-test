# concourse-test
Testing out Concourse.

## About

This demo will run a basic pipeline that will pull down the `basic-helloworld` branch, and execute the `hello world` task that will just print out text.

## Setup Concourse on Virtualbox:

- https://concoursetutorial.com/#getting-started

## Usage:

Clone Branch:

```
$ git clone -b basic-helloworld https://github.com/ruanbekker/concourse-test
```

Set Pipeline:

```
$ fly -t tutorial sp -c pipeline.yml -p pipeline-01
```

Unpause Pipeline:

```
$ fly -t tutorial up -p pipeline-01
```

Trigger Job:

```
$ fly -t tutorial tj -j pipeline-01/hello-world-job --watch
started pipeline-01/hello-world-job #2

Cloning into '/tmp/build/get'...
Fetching HEAD
292c84b change task name
initializing
running echo hello world
hello world
succeeded
```
