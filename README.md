# dumb-init-image

This is a Docker image with the [dumb-init][] binary in it. You can use this
image in a multi-stage build as a super-convenient way to install `dumb-init`
into your images.

```Dockerfile
FROM building5/dumb-init:1.2.1

FROM node
COPY --from=0 /dumb-init /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

# Proceed to Docker as normal
```

 [dumb-init]: https://github.com/Yelp/dumb-init
