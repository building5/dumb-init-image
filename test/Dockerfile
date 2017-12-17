FROM building5/dumb-init

FROM busybox
COPY --from=0 /dumb-init /usr/local/bin/
COPY test.sh /

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["/test.sh"]
