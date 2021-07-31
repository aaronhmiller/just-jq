![CI](https://github.com/aaronhmiller/just-jq/workflows/CI/badge.svg)

# just-jq

Docker container here: https://hub.docker.com/r/saltaaron/just-jq

## Usage
`echo '{"foo": 0}' | docker run --rm -i saltaaron/just-jq .`

It is especially handy when it's difficult to install jq (say in a Github action workflow) but you need to quickly parse a value like so: `http httpbin.org/anything|docker run --rm -i saltaaron/just-jq -C -r '.headers."X-Amzn-Trace-Id"'`

Returning: `Root=1-604337cb-07b199d6109073fa0859d4a1`

And to really go all out: `docker run --rm saltaaron/just-httpie --pretty none --body httpbin.org/anything|docker run --rm -i saltaaron/just-jq -r '.headers."X-Amzn-Trace-Id"'`

## Design
Just a containerized way of calling the amazing tool that is `jq`. See https://stedolan.github.io/jq/

## Build info

To build for multiple platforms, start the buildx container: `docker buildx create --use`

To tag, build, and push for multiple platforms:`docker buildx build --platform linux/amd64,linux/arm64 -t <your_docker_hub_account>/just-httpie --push .`
