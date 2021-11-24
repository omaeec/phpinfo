FROM alpine:latest AS multilayer
RUN apk add php

FROM scratch
COPY --from=multilayer / /
