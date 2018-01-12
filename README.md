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

Build Status:

```
$ fly -t tutorial builds
id  pipeline/job                    build  status     start                     end                       duration
32  pipeline-01/hello-world-job     2      succeeded  2018-01-11@15:31:21+0200  2018-01-11@15:31:30+0200  9s
31  pipeline-01/hello-world-job     1      succeeded  2018-01-11@15:28:08+0200  2018-01-11@15:28:16+0200  8s
30  hello-pipeline/job-hello-world  1      succeeded  2018-01-11@13:21:50+0200  2018-01-11@13:21:56+0200  6s
29  shell-test/deploy               2      pending    n/a                       n/a                       n/a
28  shell-test/deploy               1      aborted    n/a                       2018-01-11@13:10:23+0200  421019h10m23s
27  helloworld/job-hello-world      2      succeeded  2018-01-10@15:43:09+0200  2018-01-10@15:43:26+0200  17s
26  helloworld/job-hello-world      1      succeeded  2018-01-10@13:59:16+0200  2018-01-10@13:59:20+0200  4s
25  one-off                         n/a    succeeded  2018-01-10@13:38:45+0200  2018-01-10@13:38:51+0200  6s
24  one-off                         n/a    errored    2018-01-10@12:56:05+0200  2018-01-10@12:56:10+0200  5s
```
