![CI](https://github.com/aaronhmiller/just-httpie/workflows/CI/badge.svg)

# just-jq

* To build use `$ docker build - < DOCKERFILE_HERE`
* `$ cp Dockerfile-<version> Dockerfile`
* To tag and build `$ docker build -t kongaaron/just-jq:1.0.0 -t kongaaron/just-jq:latest .` (assumes Dockerfile in current directory)
* Once you tag and build, to upload `$ docker push kongaaron/just-jq` and `$ docker push kongaaron/just-jq:1.0.0`

## Usage:
`echo '{"foo": 0}' | docker run --rm -i kongaaron/just-jq .`

## Design
Just a containerized way of calling the amazing tool that is `jq`. See https://stedolan.github.io/jq/
