FROM alpine:latest
RUN apk add php

FROM scratch
COPY --from=0 / /
