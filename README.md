![CI](https://github.com/aaronhmiller/just-httpie/workflows/CI/badge.svg)

# just-jq

* To build use `$ docker build - < DOCKERFILE_HERE`
* `$ cp Dockerfile-<version> Dockerfile`
* To tag and build `$ docker build -t kongaaron/just-jq:1.0.0 -t kongaaron/just-jq:latest .` (assumes Dockerfile in current directory)
* Once you tag and build, to upload `$ docker push kongaaron/just-jq` and `$ docker push kongaaron/just-jq:1.0.0`

## Usage:
`echo '{"foo": 0}' | docker run --rm -i kongaaron/just-jq .`

It can be especially handy when it's difficult to install jq (say in a Github action workflow) but you need to do a quick parse to pull a value like so: `http httpbin.org/anything|docker run --rm -i kongaaron/just-jq -C -r '.headers."X-Amzn-Trace-Id"'`

Returning: `Root=1-604337cb-07b199d6109073fa0859d4a1`

## Design
Just a containerized way of calling the amazing tool that is `jq`. See https://stedolan.github.io/jq/
